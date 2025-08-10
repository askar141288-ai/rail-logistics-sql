-- schema/03_seed_data.sql
INSERT INTO forwarder(name, priority) VALUES ("ABC Rail", 2);
INSERT INTO forwarder(name, priority) VALUES ("Eurasia Logistics", 3);
INSERT INTO forwarder(name, priority) VALUES ("TransSteppe", 1);
INSERT INTO forwarder(name, priority) VALUES ("Nomad Freight", 4);
INSERT INTO station(code, name, country, tz) VALUES ("ALA01", "\u0410\u043b\u043c\u0430\u0442\u044b-1", "KZ", "Asia/Almaty");
INSERT INTO station(code, name, country, tz) VALUES ("ALA02", "\u0410\u043b\u043c\u0430\u0442\u044b-2", "KZ", "Asia/Almaty");
INSERT INTO station(code, name, country, tz) VALUES ("NU01", "\u0410\u0441\u0442\u0430\u043d\u0430-1", "KZ", "Asia/Almaty");
INSERT INTO station(code, name, country, tz) VALUES ("KRG1", "\u041a\u0430\u0440\u0430\u0433\u0430\u043d\u0434\u0430", "KZ", "Asia/Almaty");
INSERT INTO station(code, name, country, tz) VALUES ("SHM1", "\u0428\u044b\u043c\u043a\u0435\u043d\u0442", "KZ", "Asia/Almaty");
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00001", "\u0429\u0435\u0431\u0435\u043d\u044c", 1000.0,
  'Heidelberg Materials', 'Client #1',
  (SELECT forwarder_id FROM forwarder WHERE name = "TransSteppe"),
  '2025-05-04T09:00:00',
  '2025-05-07T09:00:00',
  '2025-05-04T21:00:00',
  '2025-05-07T09:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00002", "\u0426\u0435\u043c\u0435\u043d\u0442", 650.0,
  'Heidelberg Materials', 'Client #2',
  (SELECT forwarder_id FROM forwarder WHERE name = "Nomad Freight"),
  '2025-05-07T09:00:00',
  '2025-05-10T09:00:00',
  '2025-05-07T09:00:00',
  '2025-05-12T09:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00003", "\u0429\u0435\u0431\u0435\u043d\u044c", 500.0,
  'Heidelberg Materials', 'Client #3',
  (SELECT forwarder_id FROM forwarder WHERE name = "ABC Rail"),
  '2025-05-10T09:00:00',
  '2025-05-15T09:00:00',
  '2025-05-10T09:00:00',
  '2025-05-16T15:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00004", "\u0423\u0433\u043e\u043b\u044c", 500.0,
  'Heidelberg Materials', 'Client #4',
  (SELECT forwarder_id FROM forwarder WHERE name = "Eurasia Logistics"),
  '2025-05-13T09:00:00',
  '2025-05-16T09:00:00',
  '2025-05-13T09:00:00',
  '2025-05-18T12:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00005", "\u0423\u0433\u043e\u043b\u044c", 650.0,
  'Heidelberg Materials', 'Client #5',
  (SELECT forwarder_id FROM forwarder WHERE name = "TransSteppe"),
  '2025-05-16T09:00:00',
  '2025-05-19T09:00:00',
  '2025-05-16T15:00:00',
  '2025-05-21T15:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00006", "\u041a\u043b\u0438\u043d\u043a\u0435\u0440", 650.0,
  'Heidelberg Materials', 'Client #6',
  (SELECT forwarder_id FROM forwarder WHERE name = "ABC Rail"),
  '2025-05-19T09:00:00',
  '2025-05-25T09:00:00',
  '2025-05-19T09:00:00',
  '2025-05-26T15:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00007", "\u041a\u043b\u0438\u043d\u043a\u0435\u0440", 500.0,
  'Heidelberg Materials', 'Client #7',
  (SELECT forwarder_id FROM forwarder WHERE name = "Nomad Freight"),
  '2025-05-22T09:00:00',
  '2025-05-28T09:00:00',
  '2025-05-22T09:00:00',
  '2025-05-28T15:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00008", "\u0423\u0433\u043e\u043b\u044c", 1000.0,
  'Heidelberg Materials', 'Client #8',
  (SELECT forwarder_id FROM forwarder WHERE name = "Nomad Freight"),
  '2025-05-25T09:00:00',
  '2025-05-31T09:00:00',
  '2025-05-25T09:00:00',
  '2025-05-31T15:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00009", "\u0429\u0435\u0431\u0435\u043d\u044c", 1000.0,
  'Heidelberg Materials', 'Client #9',
  (SELECT forwarder_id FROM forwarder WHERE name = "Eurasia Logistics"),
  '2025-05-28T09:00:00',
  '2025-05-31T09:00:00',
  '2025-05-28T15:00:00',
  '2025-05-31T12:00:00'
);
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id, planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES (
  "WB00010", "\u041a\u043b\u0438\u043d\u043a\u0435\u0440", 800.0,
  'Heidelberg Materials', 'Client #10',
  (SELECT forwarder_id FROM forwarder WHERE name = "TransSteppe"),
  '2025-05-31T09:00:00',
  '2025-06-04T09:00:00',
  '2025-05-31T09:00:00',
  '2025-06-04T09:00:00'
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-04T09:00:00',
  '2025-05-06T09:00:00',
  '2025-05-04T21:00:00',
  '2025-05-07T00:00:00',
  400
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-06T09:00:00',
  '2025-05-07T09:00:00',
  '2025-05-07T03:00:00',
  '2025-05-07T09:00:00',
  300
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-07T09:00:00',
  '2025-05-09T09:00:00',
  '2025-05-07T09:00:00',
  '2025-05-09T12:00:00',
  700
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-09T09:00:00',
  '2025-05-10T09:00:00',
  '2025-05-09T15:00:00',
  '2025-05-12T09:00:00',
  600
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-10T09:00:00',
  '2025-05-12T09:00:00',
  '2025-05-10T09:00:00',
  '2025-05-12T12:00:00',
  700
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-12T09:00:00',
  '2025-05-15T09:00:00',
  '2025-05-12T15:00:00',
  '2025-05-16T15:00:00',
  450
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-13T09:00:00',
  '2025-05-15T09:00:00',
  '2025-05-13T09:00:00',
  '2025-05-15T12:00:00',
  700
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-15T09:00:00',
  '2025-05-16T09:00:00',
  '2025-05-15T15:00:00',
  '2025-05-18T12:00:00',
  450
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-16T09:00:00',
  '2025-05-18T09:00:00',
  '2025-05-16T15:00:00',
  '2025-05-18T18:00:00',
  550
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  '2025-05-18T09:00:00',
  '2025-05-19T09:00:00',
  '2025-05-18T21:00:00',
  '2025-05-21T15:00:00',
  600
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-19T09:00:00',
  '2025-05-21T09:00:00',
  '2025-05-19T09:00:00',
  '2025-05-21T12:00:00',
  700
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-21T09:00:00',
  '2025-05-25T09:00:00',
  '2025-05-21T15:00:00',
  '2025-05-26T15:00:00',
  600
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-22T09:00:00',
  '2025-05-24T09:00:00',
  '2025-05-22T09:00:00',
  '2025-05-24T12:00:00',
  550
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-24T09:00:00',
  '2025-05-28T09:00:00',
  '2025-05-24T15:00:00',
  '2025-05-28T15:00:00',
  600
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-25T09:00:00',
  '2025-05-27T09:00:00',
  '2025-05-25T09:00:00',
  '2025-05-27T12:00:00',
  550
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-27T09:00:00',
  '2025-05-31T09:00:00',
  '2025-05-27T15:00:00',
  '2025-05-31T15:00:00',
  300
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  '2025-05-28T09:00:00',
  '2025-05-30T09:00:00',
  '2025-05-28T15:00:00',
  '2025-05-30T18:00:00',
  550
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-30T09:00:00',
  '2025-05-31T09:00:00',
  '2025-05-30T21:00:00',
  '2025-05-31T12:00:00',
  300
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-31T09:00:00',
  '2025-06-02T09:00:00',
  '2025-05-31T09:00:00',
  '2025-06-02T12:00:00',
  700
);
INSERT INTO shipment_leg(shipment_id, from_station, to_station, planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-06-02T09:00:00',
  '2025-06-04T09:00:00',
  '2025-06-02T15:00:00',
  '2025-06-04T09:00:00',
  300
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-04T21:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-07T01:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-07T09:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-07T09:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-09T13:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-09T17:00:00',
  'DELAYED',
  "\u041e\u0436\u0438\u0434\u0430\u043d\u0438\u0435 \u043c\u0430\u043d\u0451\u0432\u0440\u043e\u0432"
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-12T09:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-10T09:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-12T13:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-12T17:00:00',
  'DELAYED',
  "\u041e\u0436\u0438\u0434\u0430\u043d\u0438\u0435 \u043c\u0430\u043d\u0451\u0432\u0440\u043e\u0432"
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-16T15:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-13T09:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-15T13:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-15T17:00:00',
  'DELAYED',
  "\u041e\u0436\u0438\u0434\u0430\u043d\u0438\u0435 \u043c\u0430\u043d\u0451\u0432\u0440\u043e\u0432"
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-18T12:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-16T15:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-18T19:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-18T23:00:00',
  'DELAYED',
  "\u041e\u0436\u0438\u0434\u0430\u043d\u0438\u0435 \u043c\u0430\u043d\u0451\u0432\u0440\u043e\u0432"
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  '2025-05-21T15:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  '2025-05-19T09:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-21T13:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-21T17:00:00',
  'DELAYED',
  "\u041e\u0436\u0438\u0434\u0430\u043d\u0438\u0435 \u043c\u0430\u043d\u0451\u0432\u0440\u043e\u0432"
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-26T15:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-22T09:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-24T13:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-28T15:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  '2025-05-25T09:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-05-27T13:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-05-31T15:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-28T15:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
  (SELECT station_id FROM station WHERE code = 'NU01'),
  '2025-05-30T19:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
  (SELECT station_id FROM station WHERE code = 'SHM1'),
  '2025-05-31T12:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
  (SELECT station_id FROM station WHERE code = 'KRG1'),
  '2025-05-31T09:00:00',
  'DEPARTED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
  (SELECT station_id FROM station WHERE code = 'ALA01'),
  '2025-06-02T13:00:00',
  'ARRIVED',
  null
);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
  (SELECT station_id FROM station WHERE code = 'ALA02'),
  '2025-06-04T09:00:00',
  'ARRIVED',
  null
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
  'TARIFF', 2360488, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
  'MANEUVER', 58419, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
  'STORAGE', 0, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  'TARIFF', 2259468, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  'MANEUVER', 68374, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  'STORAGE', 125642, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  'TARIFF', 4349889, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  'MANEUVER', 41844, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  'STORAGE', 139391, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  'TARIFF', 3317628, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  'MANEUVER', 68375, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  'STORAGE', 111027, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  'TARIFF', 3882547, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  'MANEUVER', 69908, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  'STORAGE', 87740, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  'TARIFF', 3315952, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  'MANEUVER', 75566, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  'STORAGE', 94580, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
  'TARIFF', 4424082, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
  'MANEUVER', 74645, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
  'STORAGE', 0, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
  'TARIFF', 2915229, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
  'MANEUVER', 48837, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
  'STORAGE', 0, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
  'TARIFF', 3805738, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
  'MANEUVER', 66059, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
  'STORAGE', 0, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
  'TARIFF', 2050596, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
  'MANEUVER', 61782, 'KZT'
);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
  'STORAGE', 0, 'KZT'
);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
  "\u041f\u0440\u043e\u0441\u0440\u043e\u0447\u043a\u0430 \u043f\u0440\u0438\u0431\u044b\u0442\u0438\u044f", 81993, false
);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
  "\u041f\u0440\u043e\u0441\u0440\u043e\u0447\u043a\u0430 \u043f\u0440\u0438\u0431\u044b\u0442\u0438\u044f", 43507, false
);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
  "\u041f\u0440\u043e\u0441\u0440\u043e\u0447\u043a\u0430 \u043f\u0440\u0438\u0431\u044b\u0442\u0438\u044f", 89399, false
);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
  "\u041f\u0440\u043e\u0441\u0440\u043e\u0447\u043a\u0430 \u043f\u0440\u0438\u0431\u044b\u0442\u0438\u044f", 39594, false
);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES (
  (SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
  "\u041f\u0440\u043e\u0441\u0440\u043e\u0447\u043a\u0430 \u043f\u0440\u0438\u0431\u044b\u0442\u0438\u044f", 75898, false
);