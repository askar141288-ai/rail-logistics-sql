-- schema/01_tables.sql
-- PostgreSQL DDL для логистического проекта

CREATE TABLE IF NOT EXISTS forwarder (
  forwarder_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  priority SMALLINT NOT NULL DEFAULT 3 CHECK (priority BETWEEN 1 AND 5)
);

CREATE TABLE IF NOT EXISTS station (
  station_id SERIAL PRIMARY KEY,
  code TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  country TEXT,
  tz TEXT DEFAULT 'Asia/Almaty'
);

CREATE TABLE IF NOT EXISTS wagon (
  wagon_id SERIAL PRIMARY KEY,
  wagon_type TEXT,
  capacity_t DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS shipment (
  shipment_id SERIAL PRIMARY KEY,
  waybill_no TEXT UNIQUE,
  cargo TEXT,
  weight_t DECIMAL(10,2) CHECK (weight_t > 0),
  shipper TEXT,
  consignee TEXT,
  forwarder_id INT REFERENCES forwarder(forwarder_id),
  planned_departure TIMESTAMPTZ,
  planned_arrival   TIMESTAMPTZ,
  actual_departure  TIMESTAMPTZ,
  actual_arrival    TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS shipment_leg (
  leg_id SERIAL PRIMARY KEY,
  shipment_id INT NOT NULL REFERENCES shipment(shipment_id) ON DELETE CASCADE,
  from_station INT REFERENCES station(station_id),
  to_station   INT REFERENCES station(station_id),
  planned_departure TIMESTAMPTZ,
  planned_arrival   TIMESTAMPTZ,
  actual_departure  TIMESTAMPTZ,
  actual_arrival    TIMESTAMPTZ,
  distance_km NUMERIC(10,2) CHECK (distance_km >= 0)
);

CREATE TABLE IF NOT EXISTS event (
  event_id SERIAL PRIMARY KEY,
  shipment_id INT NOT NULL REFERENCES shipment(shipment_id) ON DELETE CASCADE,
  station_id INT REFERENCES station(station_id),
  ts TIMESTAMPTZ NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('DEPARTED','ARRIVED','DELAYED','CUSTOMS','HOLD','HANDOVER')),
  note TEXT
);

CREATE TABLE IF NOT EXISTS cost (
  cost_id SERIAL PRIMARY KEY,
  shipment_id INT NOT NULL REFERENCES shipment(shipment_id) ON DELETE CASCADE,
  item TEXT NOT NULL CHECK (item IN ('TARIFF','MANEUVER','STORAGE','CUSTOMS','PENALTY','OTHER')),
  amount NUMERIC(14,2) NOT NULL CHECK (amount >= 0),
  currency CHAR(3) NOT NULL DEFAULT 'KZT'
);

CREATE TABLE IF NOT EXISTS claim (
  claim_id SERIAL PRIMARY KEY,
  shipment_id INT NOT NULL REFERENCES shipment(shipment_id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  reason TEXT,
  penalty_amount NUMERIC(14,2) DEFAULT 0 CHECK (penalty_amount >= 0),
  resolved BOOLEAN DEFAULT FALSE
);