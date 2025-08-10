-- queries/sla_breaches.sql
SELECT s.shipment_id, f.name AS forwarder, s.planned_arrival, s.actual_arrival,
       (s.actual_arrival - s.planned_arrival) AS delay,
       CASE WHEN s.actual_arrival > s.planned_arrival THEN TRUE ELSE FALSE END AS breached
FROM shipment s
JOIN forwarder f ON f.forwarder_id = s.forwarder_id
WHERE s.actual_arrival IS NOT NULL
ORDER BY delay DESC;