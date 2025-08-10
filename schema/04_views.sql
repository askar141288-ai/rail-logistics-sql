-- schema/04_views.sql
-- Полезные вьюхи и агрегаты

-- 1) KPI: On-Time (факт <= план)
CREATE OR REPLACE VIEW v_on_time_month AS
SELECT
  date_trunc('month', planned_arrival) AS month,
  ROUND(100.0 * AVG((actual_arrival IS NOT NULL AND actual_arrival <= planned_arrival)::INT), 2) AS on_time_pct,
  COUNT(*) AS shipments
FROM shipment
GROUP BY 1
ORDER BY 1;

-- 2) Суммарная дистанция по отгрузке (км)
CREATE OR REPLACE VIEW v_shipment_distance AS
SELECT shipment_id, COALESCE(SUM(distance_km),0) AS total_km
FROM shipment_leg
GROUP BY shipment_id;

-- 3) Стоимость за тонно-километр (упрощённо)
CREATE OR REPLACE VIEW v_cost_per_ton_km AS
SELECT s.shipment_id,
       COALESCE(SUM(CASE WHEN c.item IN ('TARIFF','MANEUVER','STORAGE','CUSTOMS','PENALTY','OTHER') THEN c.amount END),0) AS total_cost_kzt,
       s.weight_t,
       d.total_km,
       CASE WHEN s.weight_t > 0 AND d.total_km > 0
            THEN ROUND(COALESCE(SUM(c.amount),0) / (s.weight_t * d.total_km), 6)
            ELSE NULL END AS cost_per_ton_km
FROM shipment s
LEFT JOIN cost c ON c.shipment_id = s.shipment_id
LEFT JOIN v_shipment_distance d ON d.shipment_id = s.shipment_id
GROUP BY s.shipment_id, s.weight_t, d.total_km;

-- 4) Рейтинг экспедитора: on-time и нарушения SLA
CREATE OR REPLACE VIEW v_forwarder_score AS
SELECT f.name,
       COUNT(*) AS total,
       ROUND(100.0*AVG((s.actual_arrival <= s.planned_arrival)::INT),2) AS on_time_pct,
       SUM(CASE WHEN s.actual_arrival > s.planned_arrival THEN 1 ELSE 0 END) AS sla_breaches
FROM shipment s
JOIN forwarder f ON f.forwarder_id = s.forwarder_id
GROUP BY f.name
ORDER BY on_time_pct DESC, total DESC;

-- 5) Dwell time по станциям (разница между ARRIVED и DEPARTED, грубо)
CREATE OR REPLACE VIEW v_dwell_time AS
WITH e AS (
  SELECT shipment_id, station_id,
         MIN(CASE WHEN status='ARRIVED' THEN ts END) AS arrived_at,
         MAX(CASE WHEN status='DEPARTED' THEN ts END) AS departed_at
  FROM event
  GROUP BY shipment_id, station_id
)
SELECT st.code AS station_code,
       COUNT(*) AS visits,
       ROUND(AVG(EXTRACT(EPOCH FROM (e.departed_at - e.arrived_at)))/3600.0, 2) AS avg_dwell_hours
FROM e
JOIN station st ON st.station_id = e.station_id
WHERE e.arrived_at IS NOT NULL AND e.departed_at IS NOT NULL AND e.departed_at > e.arrived_at
GROUP BY st.code
ORDER BY avg_dwell_hours DESC;