-- schema/02_constraints.sql
-- Индексы, дополнительные ограничения

-- Часто фильтруем по датам прибытия/отправки
CREATE INDEX IF NOT EXISTS idx_shipment_planned_arrival ON shipment(planned_arrival);
CREATE INDEX IF NOT EXISTS idx_shipment_actual_arrival  ON shipment(actual_arrival);
CREATE INDEX IF NOT EXISTS idx_event_shipment_ts ON event(shipment_id, ts);
CREATE INDEX IF NOT EXISTS idx_cost_shipment ON cost(shipment_id);
CREATE INDEX IF NOT EXISTS idx_shipment_forwarder ON shipment(forwarder_id);