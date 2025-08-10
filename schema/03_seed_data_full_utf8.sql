-- schema/03_seed_data.sql
INSERT INTO forwarder(name, priority) VALUES ('ABC Rail', 2);
INSERT INTO forwarder(name, priority) VALUES ('Eurasia Logistics', 3);
INSERT INTO forwarder(name, priority) VALUES ('TransSteppe', 1);
INSERT INTO forwarder(name, priority) VALUES ('Nomad Freight', 4);
INSERT INTO station(code, name, country, tz) VALUES ('ALA01', 'Алматы-1', 'KZ', 'Asia/Almaty');
INSERT INTO station(code, name, country, tz) VALUES ('ALA02', 'Алматы-2', 'KZ', 'Asia/Almaty');
INSERT INTO station(code, name, country, tz) VALUES ('NU01', 'Астана-1', 'KZ', 'Asia/Almaty');
INSERT INTO station(code, name, country, tz) VALUES ('KRG1', 'Караганда', 'KZ', 'Asia/Almaty');
INSERT INTO station(code, name, country, tz) VALUES ('SHM1', 'Шымкент', 'KZ', 'Asia/Almaty');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00001', 'Цемент', 800.0, 'Heidelberg Materials', 'Client #1',
    (SELECT forwarder_id FROM forwarder WHERE name = 'ABC Rail'),
    '2025-05-04 09:00:00', '2025-05-08 09:00:00', '2025-05-04 21:00:00', '2025-05-08 15:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00002', 'Цемент', 650.0, 'Heidelberg Materials', 'Client #2',
    (SELECT forwarder_id FROM forwarder WHERE name = 'ABC Rail'),
    '2025-05-07 09:00:00', '2025-05-11 09:00:00', '2025-05-07 15:00:00', '2025-05-13 09:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00003', 'Уголь', 650.0, 'Heidelberg Materials', 'Client #3',
    (SELECT forwarder_id FROM forwarder WHERE name = 'TransSteppe'),
    '2025-05-10 09:00:00', '2025-05-13 09:00:00', '2025-05-10 15:00:00', '2025-05-13 09:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00004', 'Цемент', 1000.0, 'Heidelberg Materials', 'Client #4',
    (SELECT forwarder_id FROM forwarder WHERE name = 'Nomad Freight'),
    '2025-05-13 09:00:00', '2025-05-18 09:00:00', '2025-05-13 09:00:00', '2025-05-20 15:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00005', 'Клинкер', 800.0, 'Heidelberg Materials', 'Client #5',
    (SELECT forwarder_id FROM forwarder WHERE name = 'ABC Rail'),
    '2025-05-16 09:00:00', '2025-05-20 09:00:00', '2025-05-16 15:00:00', '2025-05-20 09:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00006', 'Щебень', 650.0, 'Heidelberg Materials', 'Client #6',
    (SELECT forwarder_id FROM forwarder WHERE name = 'Eurasia Logistics'),
    '2025-05-19 09:00:00', '2025-05-24 09:00:00', '2025-05-19 09:00:00', '2025-05-26 15:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00007', 'Щебень', 800.0, 'Heidelberg Materials', 'Client #7',
    (SELECT forwarder_id FROM forwarder WHERE name = 'ABC Rail'),
    '2025-05-22 09:00:00', '2025-05-28 09:00:00', '2025-05-22 09:00:00', '2025-05-29 12:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00008', 'Клинкер', 800.0, 'Heidelberg Materials', 'Client #8',
    (SELECT forwarder_id FROM forwarder WHERE name = 'Nomad Freight'),
    '2025-05-25 09:00:00', '2025-05-31 09:00:00', '2025-05-25 09:00:00', '2025-05-31 09:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00009', 'Клинкер', 1000.0, 'Heidelberg Materials', 'Client #9',
    (SELECT forwarder_id FROM forwarder WHERE name = 'ABC Rail'),
    '2025-05-28 09:00:00', '2025-06-02 09:00:00', '2025-05-28 09:00:00', '2025-06-04 15:00:00');
INSERT INTO shipment(waybill_no, cargo, weight_t, shipper, consignee, forwarder_id,
    planned_departure, planned_arrival, actual_departure, actual_arrival)
VALUES ('WB00010', 'Цемент', 800.0, 'Heidelberg Materials', 'Client #10',
    (SELECT forwarder_id FROM forwarder WHERE name = 'TransSteppe'),
    '2025-05-31 09:00:00', '2025-06-06 09:00:00', '2025-05-31 21:00:00', '2025-06-06 15:00:00');
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-04 09:00:00', '2025-05-06 09:00:00', '2025-05-04 21:00:00', '2025-05-07 00:00:00', 400);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-06 09:00:00', '2025-05-08 09:00:00', '2025-05-07 03:00:00', '2025-05-08 15:00:00', 600);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-07 09:00:00', '2025-05-09 09:00:00', '2025-05-07 15:00:00', '2025-05-09 18:00:00', 700);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    '2025-05-09 09:00:00', '2025-05-11 09:00:00', '2025-05-09 21:00:00', '2025-05-13 09:00:00', 450);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-10 09:00:00', '2025-05-12 09:00:00', '2025-05-10 15:00:00', '2025-05-12 18:00:00', 550);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-12 09:00:00', '2025-05-13 09:00:00', '2025-05-12 21:00:00', '2025-05-13 09:00:00', 600);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-13 09:00:00', '2025-05-15 09:00:00', '2025-05-13 09:00:00', '2025-05-15 12:00:00', 400);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-15 09:00:00', '2025-05-18 09:00:00', '2025-05-15 15:00:00', '2025-05-20 15:00:00', 600);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-16 09:00:00', '2025-05-18 09:00:00', '2025-05-16 15:00:00', '2025-05-18 18:00:00', 550);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-18 09:00:00', '2025-05-20 09:00:00', '2025-05-18 21:00:00', '2025-05-20 09:00:00', 600);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-19 09:00:00', '2025-05-21 09:00:00', '2025-05-19 09:00:00', '2025-05-21 12:00:00', 400);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-21 09:00:00', '2025-05-24 09:00:00', '2025-05-21 15:00:00', '2025-05-26 15:00:00', 300);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    '2025-05-22 09:00:00', '2025-05-24 09:00:00', '2025-05-22 09:00:00', '2025-05-24 12:00:00', 400);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-24 09:00:00', '2025-05-28 09:00:00', '2025-05-24 15:00:00', '2025-05-29 12:00:00', 600);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    '2025-05-25 09:00:00', '2025-05-27 09:00:00', '2025-05-25 09:00:00', '2025-05-27 12:00:00', 700);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-27 09:00:00', '2025-05-31 09:00:00', '2025-05-27 15:00:00', '2025-05-31 09:00:00', 300);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-28 09:00:00', '2025-05-30 09:00:00', '2025-05-28 09:00:00', '2025-05-30 12:00:00', 400);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-30 09:00:00', '2025-06-02 09:00:00', '2025-05-30 15:00:00', '2025-06-04 15:00:00', 600);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-31 09:00:00', '2025-06-02 09:00:00', '2025-05-31 21:00:00', '2025-06-03 00:00:00', 700);
INSERT INTO shipment_leg(shipment_id, from_station, to_station,
    planned_departure, planned_arrival, actual_departure, actual_arrival, distance_km)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-06-02 09:00:00', '2025-06-06 09:00:00', '2025-06-03 03:00:00', '2025-06-06 15:00:00', 300);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-04 21:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-07 01:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-08 15:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-07 15:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-09 19:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-09 23:00:00', 'DELAYED', 'Ожидание манёвров');
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    '2025-05-13 09:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-10 15:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-12 19:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-13 09:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    '2025-05-13 09:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-15 13:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-15 17:00:00', 'DELAYED', 'Ожидание манёвров');
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-20 15:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-16 15:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-18 19:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-20 09:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-19 09:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-21 13:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-21 17:00:00', 'DELAYED', 'Ожидание манёвров');
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-26 15:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-22 09:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    '2025-05-24 13:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    '2025-05-24 17:00:00', 'DELAYED', 'Ожидание манёвров');
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-29 12:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-05-25 09:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
    (SELECT station_id FROM station WHERE code = 'ALA01'),
    '2025-05-27 13:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-31 09:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    (SELECT station_id FROM station WHERE code = 'SHM1'),
    '2025-05-28 09:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-30 13:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-05-30 17:00:00', 'DELAYED', 'Ожидание манёвров');
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-06-04 15:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
    (SELECT station_id FROM station WHERE code = 'KRG1'),
    '2025-05-31 21:00:00', 'DEPARTED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
    (SELECT station_id FROM station WHERE code = 'NU01'),
    '2025-06-03 01:00:00', 'ARRIVED', NULL);
INSERT INTO event(shipment_id, station_id, ts, status, note)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
    (SELECT station_id FROM station WHERE code = 'ALA02'),
    '2025-06-06 15:00:00', 'ARRIVED', NULL);
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
    'TARIFF', 3769668, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
    'MANEUVER', 32082, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00001'),
    'STORAGE', 0, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    'TARIFF', 2027257, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    'MANEUVER', 79729, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    'STORAGE', 70926, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
    'TARIFF', 3109480, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
    'MANEUVER', 32847, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00003'),
    'STORAGE', 0, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    'TARIFF', 2955874, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    'MANEUVER', 48965, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    'STORAGE', 60458, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
    'TARIFF', 2299483, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
    'MANEUVER', 69920, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00005'),
    'STORAGE', 0, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    'TARIFF', 2134638, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    'MANEUVER', 50673, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    'STORAGE', 102581, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    'TARIFF', 4354548, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    'MANEUVER', 65322, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    'STORAGE', 84438, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
    'TARIFF', 3770667, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
    'MANEUVER', 69086, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00008'),
    'STORAGE', 0, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    'TARIFF', 4252216, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    'MANEUVER', 79209, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    'STORAGE', 84973, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
    'TARIFF', 4129371, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
    'MANEUVER', 36973, 'KZT');
INSERT INTO cost(shipment_id, item, amount, currency)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00010'),
    'STORAGE', 0, 'KZT');
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00002'),
    'Просрочка прибытия', 85392, false);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00004'),
    'Просрочка прибытия', 60512, false);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00006'),
    'Просрочка прибытия', 65093, false);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00007'),
    'Просрочка прибытия', 106622, false);
INSERT INTO claim(shipment_id, reason, penalty_amount, resolved)
VALUES ((SELECT shipment_id FROM shipment WHERE waybill_no = 'WB00009'),
    'Просрочка прибытия', 114012, false);