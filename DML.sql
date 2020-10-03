INSERT INTO Crews(crewID, assignment_date) VALUES
    ('CR084', '2020-01-07'),
    ('CR258', '2020-01-12'),
    ('CR648', '2020-02-03'),
    ('CR127', '2020-02-05'),
    ('CR359', '2020-03-07'),
    ('CR483', '2020-03-16');

INSERT INTO Employees(faa_ID, first_name, last_name, crewID) VALUES
    ('A7EW', 'Derick', 'Bui', 'CR084'),
    ('SF2D', 'Andrew', 'Chheang', 'CR084'),
    ('UV3A', 'Gustavo', 'Cisneros', 'CR084'),
    ('V2F0', 'Darren', 'Cobian', 'CR258'),
    ('2JWC', 'Anthony', 'Dawson', 'CR258'),
    ('DME2', 'Jarred', 'Dee', 'CR648'),
    ('VL5V', 'Daniel', 'Duong', 'CR258'),
    ('FE9D', 'Jose', 'Gomez', 'CR127'),
    ('VME7', 'Jesse', 'Guardado', 'CR648'),
    ('O5DI', 'William', 'Gusmanov', 'CR359'),
    ('FI8K', 'Edwin', 'Hernandex', 'CR648'),
    ('CSW8', 'Adam', 'Hinkle', 'CR483'),
    ('VCE1', 'Aaron', 'Hoang', 'CR127'),
    ('AN9F', 'William', 'Jorgensen', 'CR084'),
    ('KNO2', 'Kris', 'Kath', 'CR127'),
    ('WV1V', 'Mia', 'Keierleber', 'CR084'),
    ('6MWU', 'Osman', 'Khan', 'CR359'),
    ('GE0F', 'Sopheak', 'Ko', 'CR084'),
    ('VEO2', 'David', 'Kwon', 'CR359'), 
    ('AP6K', 'Rachel', 'Lewis', 'CR258'),
    ('8CVW', 'Andrew', 'Lucas', 'CR483'),
    ('IK4J', 'Gisselle', 'Mondragon', 'CR258'),
    ('BV1I', 'Meng', 'Moua', 'CR483'), 
    ('9OVA', 'Jack', 'Nguyen', 'CR258'),
    ('3ACH', 'John', 'Nguyen', 'CR084'),
    ('VIE2', 'Kristinann', 'Osborn', 'CR648'),
    ('O6AV', 'Ben', 'Partida', 'CR648'),
    ('PVI3', 'Giovanni', 'Salas', 'CR648'),
    ('VO4V', 'Lennox', 'Scott', 'CR127'),
    ('MC3A', 'Benjamin', 'Seo', 'CR127'),
    ('WEV9', 'Yiang', 'Shen', 'CR127'),
    ('5CAB', 'Harry', 'Tran', 'CR127'),
    ('VES2', 'Jimmy', 'Tran', 'CR359'),
    ('PI2M', 'Celeste', 'Tubon', 'CR359'),
    ('VWP3', 'Jose', 'Vasquez', 'CR359'),
    ('WM9D', 'Sergio', 'Vasquez', 'CR359'),
    ('PVD4', 'Alfonso', 'Villalobos', 'CR483'),
    ('WM8C', 'Kevin', 'Vu', 'CR483'),
    ('CME7', 'Brandon', 'Walker', 'CR483'),
    ('VJ8M', 'Edmund', 'Zhou', 'CR483');
    

INSERT INTO Captains(faa_ID, latest_drugtest_date) VALUES
    ('A7EW', DATE('2019-05-12')),
    ('UV3A', DATE('2019-07-21')),
    ('2JWC', DATE('2019-08-12')),
    ('VL5V', DATE('2019-10-25')),
    ('VME7', DATE('2019-11-06')),
    ('FI8K', DATE('2019-12-03')),
    ('VCE1', DATE('2019-12-19')),
    ('KNO2', DATE('2020-01-04')),
    ('6MWU', DATE('2020-02-11')),
    ('VEO2', DATE('2020-04-03')),
    ('8CVW', DATE('2019-05-28')),
    ('BV1I', DATE('2019-05-17'));


INSERT INTO CoPilots(faa_ID) VALUES
    ('A7EW'),
    ('2JWC'),
    ('VME7'),
    ('VCE1'),
    ('6MWU'),
    ('8CVW');


INSERT INTO Pilots(faa_ID) VALUES
    ('UV3A'),
    ('VL5V'),
    ('FI8K'),
    ('KNO2'),
    ('VEO2'),
    ('BV1I');


INSERT INTO Navigators(faa_ID) VALUES
    ('SF2D'),
    ('V2F0'),
    ('DME2'),
    ('FE9D'),
    ('O5DI'),
    ('CSW8');


INSERT INTO FlightAttendants(faa_ID) VALUES
    ('3ACH'),
    ('VIE2'),
    ('O6AV'),
    ('PVI3'),
    ('VO4V'),
    ('MC3A'),
    ('WEV9'),
    ('5CAB'),
    ('VES2'),
    ('PI2M'),
    ('VWP3'),
    ('WM9D'),
    ('PVD4'),
    ('WM8C'),
    ('CME7'),
    ('AN9F'),
    ('WV1V'),
    ('GE0F'),
    ('AP6K'),
    ('IK4J'),
    ('9OVA'),
    ('VJ8M');


INSERT INTO Flights
(flightID, crewID, planeID, airlineID, flight_number, departure_time, arrival_time, destination)
VALUES
	('0001', 'CR084', '156', '16', 'F8924', TIMESTAMP('2020-02-19 08:25:00'), TIMESTAMP('2020-02-19 10:09:00'), 'Los Angeles'), -- Atlanta -> LA
  ('0002', 'CR084', '155', '16', 'F8916', TIMESTAMP('2020-01-30 12:15:00'), TIMESTAMP('2020-01-30 05:30:00'), 'Atlanta'), -- SanFrancisco -> Atlanta
  ('0003', 'CR084', '154', '16', 'F1247', TIMESTAMP('2020-02-28 08:00:00'), TIMESTAMP('2020-02-28 10:15:00'), 'San Diego'), -- Salt Lake City -> SanDiego
  ('0004', 'CR084', '153', '16', 'F4796', TIMESTAMP('2020-02-22 13:59:00'), TIMESTAMP('2020-02-22 17:08:00'), 'Miami'), -- Miami -> New York
  ('0005', 'CR084', '152', '15', 'F1285', TIMESTAMP('2020-03-01 07:10:00'), TIMESTAMP('2020-03-01 23:00:00'), 'Ho Chi Minh City'), -- LA -> Ho chi minh
  ('0006', 'CR084', '151', '15', 'F7618', TIMESTAMP('2020-03-05 00:10:00'), TIMESTAMP('2020-03-06 16:45:00'), 'Shanghai'), -- Queens -> Shanghai
  
	('0007', 'CR258', '150', '15', 'F9962', TIMESTAMP('2020-02-23 12:00:00'), TIMESTAMP('2020-02-23 17:00:00'), 'Long Beach'), -- Miami -> LongBeach
  ('0008', 'CR258', '149', '15', 'F4815', TIMESTAMP('2020-03-07 17:45:00'), TIMESTAMP('2020-03-07 20:59:00'), 'Salt Lake City'), -- Philadelphia -> Salt Lake City
	('0009', 'CR258', '148', '15', 'F8572', TIMESTAMP('2020-04-20 05:30:00'), TIMESTAMP('2020-02-23 03:40:00'), 'Manila'), -- Phoenix -> Manila
  ('0010', 'CR258', '147', '14', 'F4829', TIMESTAMP('2020-03-26 16:36:00'), TIMESTAMP('2020-03-26 19:17:00'), 'San Francisco'), -- Charlotte -> San Francisco
	('0011', 'CR258', '146', '14', 'F1348', TIMESTAMP('2020-03-27 11:00:00'), TIMESTAMP('2020-03-27 13:35:00'), 'Phoenix'), -- Dallas -> Phoenix
  ('0012', 'CR258', '145', '14', 'F3284', TIMESTAMP('2020-03-28 13:35:00'), TIMESTAMP('2020-03-28 15:55:00'), 'San Diego'), -- Chicago -> San Diego
	('0013', 'CR258', '144', '14', 'F1012', TIMESTAMP('2020-03-28 17:00:00'), TIMESTAMP('2020-03-28 19:00:00'), 'Los Angeles'), -- San Diego -> Los Angeles
  
  ('0014', 'CR648', '143', '13', 'F1895', TIMESTAMP('2020-02-23 12:00:00'), TIMESTAMP('2020-02-23 17:00:00'), 'Paradise'), -- Seattle -> Paradise
  ('0015', 'CR648', '142', '13', 'F2364', TIMESTAMP('2020-02-28 06:10:00'), TIMESTAMP('2020-02-28 07:41:00'), 'Dallas'), -- Denver -> Dallas
	('0016', 'CR648', '141', '13', 'F8421', TIMESTAMP('2020-02-23 12:30:00'), TIMESTAMP('2020-02-23 15:40:00'), 'Chicago'), -- Miami -> Chicago
  ('0017', 'CR648', '140', '12', 'F5184', TIMESTAMP('2020-03-26 16:36:00'), TIMESTAMP('2020-03-26 19:17:00'), 'Orlando'), -- Newark -> Orlando
	('0018', 'CR648', '139', '12', 'F3197', TIMESTAMP('2020-03-27 10:30:00'), TIMESTAMP('2020-03-27 12:34:00'), 'Chicago'), -- Orlando -> Chicago
  ('0019', 'CR648', '138', '11', 'F1982', TIMESTAMP('2020-03-29 06:19:00'), TIMESTAMP('2020-03-29 09:00:00'), 'New York'), -- Tampa -> New York
	('0020', 'CR648', '137', '11', 'F3154', TIMESTAMP('2020-03-30 06:10:00'), TIMESTAMP('2020-03-30 07:41:00'), 'Chicago'), -- Queens -> Chicago
  
  ('0021', 'CR127', '136', '11', 'F1691', TIMESTAMP('2020-02-21 05:00:00'), TIMESTAMP('2020-02-21 07:45:00'), 'Los Angeles'), -- Seattle -> Los Angeles
  ('0022', 'CR127', '135', '11', 'F9127', TIMESTAMP('2020-02-24 08:30:00'), TIMESTAMP('2020-02-24 11:30:00'), 'San Francisco'), -- Miami -> San Francisco
	('0023', 'CR127', '134', '10', 'F1581', TIMESTAMP('2020-02-27 12:10:00'), TIMESTAMP('2020-02-28 05:03:00'), 'Shanghai'), -- Houston -> Shanghai
  ('0024', 'CR127', '133', '10', 'F0285', TIMESTAMP('2020-03-10 19:45:00'), TIMESTAMP('2020-03-10 22:04:00'), 'Chicago'), -- Miami -> Chicago
	('0025', 'CR127', '132', '09', 'F1985', TIMESTAMP('2020-03-16 17:55:00'), TIMESTAMP('2020-03-16 19:30:00'), 'San Diego'), -- Atlanta -> San Diego
  ('0026', 'CR127', '131', '09', 'F1026', TIMESTAMP('2020-03-27 12:15:00'), TIMESTAMP('2020-03-27 14:11:00'), 'Dallas'), -- Orlando -> Dallas
	('0027', 'CR127', '130', '09', 'F1681', TIMESTAMP('2020-03-30 06:10:00'), TIMESTAMP('2020-03-30 07:41:00'), 'Paradise'), -- San francisco -> Paradise
  
  ('0028', 'CR359', '129', '09', 'F8264', TIMESTAMP('2020-03-16 05:30:00'), TIMESTAMP('2020-03-17 02:30:00'), 'Shanghai'), -- Phoenix -> Shanghai
	('0029', 'CR359', '137', '11', 'F3154', TIMESTAMP('2020-03-17 06:10:00'), TIMESTAMP('2020-03-18 09:00:00'), 'Chicago'), -- Shanghai -> Chicago
  
  ('0030', 'CR483', '127', '08', 'F6812', TIMESTAMP('2020-03-16 10:10:00'), TIMESTAMP('2020-03-16 12:00:00'), 'Manila'), -- Tampa -> Manila
	('0031', 'CR483', '126', '07', 'F1265', TIMESTAMP('2020-03-30 06:10:00'), TIMESTAMP('2020-03-30 10:10:00'), 'Dulles'); -- Houston -> Dulles
  

INSERT INTO FlightInstances
(flightInstanceID, actual_depart_datetime, actual_arrive_datetime, airportID, flightID)
VALUES
('F1', TIMESTAMP('2020-02-19 08:57:35'), TIMESTAMP('2020-02-19 10:59:00'), '101', '0001'),
('F2', TIMESTAMP('2020-01-30 12:16:20'), TIMESTAMP('2020-01-30 05:37:32'), '106', '0002'),
('F3', TIMESTAMP('2020-02-28 08:10:00'), TIMESTAMP('2020-02-28 10:24:50'), '120', '0003'),
('F4', TIMESTAMP('2020-02-22 13:59:30'), TIMESTAMP('2020-02-22 17:09:11'), '111', '0004'),
('F5', TIMESTAMP('2020-03-01 07:11:05'), TIMESTAMP('2020-03-01 23:35:20'), '100', '0005'),
('F6', TIMESTAMP('2020-03-05 00:11:01'), TIMESTAMP('2020-03-06 16:55:12'), '118', '0006'),
('F7', TIMESTAMP('2020-02-23 12:09:10'), TIMESTAMP('2020-02-23 17:54:23'), '111', '0007'),
('F8', TIMESTAMP('2020-03-07 17:45:56'), TIMESTAMP('2020-03-07 20:43:15'), '119', '0008'),
('F9', TIMESTAMP('2020-04-20 05:56:00'), TIMESTAMP('2020-02-23 03:59:43'), '112', '0009'),
('F10', TIMESTAMP('2020-03-26 17:05:24'), TIMESTAMP('2020-03-26 19:59:30'), '109', '0010'),
('F11', TIMESTAMP('2020-03-27 11:05:12'), TIMESTAMP('2020-03-27 13:39:56'), '103', '0011'),
('F12', TIMESTAMP('2020-03-28 13:37:26'), TIMESTAMP('2020-03-28 16:16:45'), '123', '0012'),
('F13', TIMESTAMP('2020-03-28 17:05:04'), TIMESTAMP('2020-03-28 19:16:05'), '121', '0013'),
('F14', TIMESTAMP('2020-02-23 12:45:23'), TIMESTAMP('2020-02-23 17:55:20'), '108', '0014'),
('F15', TIMESTAMP('2020-02-28 06:12:50'), TIMESTAMP('2020-02-28 07:48:25'), '104', '0015'),
('F16', TIMESTAMP('2020-02-23 12:38:27'), TIMESTAMP('2020-02-23 15:49:07'), '111', '0016'),
('F17', TIMESTAMP('2020-03-26 17:15:25'), TIMESTAMP('2020-03-26 20:24:02'), '113', '0017'),
('F18', TIMESTAMP('2020-03-27 11:01:01'), TIMESTAMP('2020-03-27 01:15:12'), '110', '0018'),
('F19', TIMESTAMP('2020-03-29 06:19:01'), TIMESTAMP('2020-03-29 09:01:04'), '124', '0019'),
('F20', TIMESTAMP('2020-03-30 06:16:00'), TIMESTAMP('2020-03-30 08:10:05'), '105', '0020'),
('F21', TIMESTAMP('2020-02-21 05:35:03'), TIMESTAMP('2020-02-21 08:25:12'), '108', '0021'),
('F22', TIMESTAMP('2020-02-24 08:37:02'), TIMESTAMP('2020-02-24 11:41:58'), '111', '0022'),
('F23', TIMESTAMP('2020-02-27 12:16:25'), TIMESTAMP('2020-02-28 07:13:20'), '114', '0023'),
('F24', TIMESTAMP('2020-03-10 20:15:25'), TIMESTAMP('2020-03-10 22:56:26'), '111', '0024'),
('F25', TIMESTAMP('2020-03-16 17:55:05'), TIMESTAMP('2020-03-16 19:45:23'), '101', '0025'),
('F26', TIMESTAMP('2020-03-27 12:19:16'), TIMESTAMP('2020-03-27 14:49:22'), '110', '0026'),
('F27', TIMESTAMP('2020-03-30 06:34:36'), TIMESTAMP('2020-03-30 08:22:20'), '106', '0027'),
('F28', TIMESTAMP('2020-03-16 05:57:30'), TIMESTAMP('2020-03-17 03:17:45'), '112', '0028'),
('F29', TIMESTAMP('2020-03-17 06:12:00'), TIMESTAMP('2020-03-18 09:02:00'), '127', '0029'),
('F30', TIMESTAMP('2020-03-16 11:12:50'), TIMESTAMP('2020-03-16 13:25:20'), '124', '0030'),
('F31', TIMESTAMP('2020-03-30 06:17:27'), TIMESTAMP('2020-03-30 10:42:37'), '114', '0031');


INSERT INTO IncidentReports
(faa_id, flightID, incident_type, description, involving_employee_faaID)
VALUES
    ('3ACH', '0004', 'Recognition of Service', 
    'Flight Attendant Ko goes above and beyond when it comes to accomodating passengers',
    'GE0F'),
    ('FI8K', '0016', 'Concern regarding equipment',
    'Pilot Hernandex reports Flight Attendant Partidas noticing of loose hinges on overhead bins', 
    'O6AV'),
    ('SF2D', '0006', 'Theft problem',
    'Navigator Chheang reports Flight Attendant Nguyen stashing food into personal bag',
    '3ACH'),
    ('VO4V', '0023', 'EMERGENCY', 
    'Flight Attendant Scott reports finding CoPilot Hoang having a severe allergic reaction after adorning latex gloves',
    'VCE1'),
    ('8CVW', '0030', 'Recognition of Service',
    'CoPilot Lucas congratulates Pilot Moua on 10 years of flawless services',
    'BV1I');

