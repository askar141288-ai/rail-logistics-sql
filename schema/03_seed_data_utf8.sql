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