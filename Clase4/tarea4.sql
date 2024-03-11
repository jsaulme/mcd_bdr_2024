CREATE TABLE Institucion (
  id_institucion INT PRIMARY KEY,
  nombre_inst VARCHAR(255)
);

CREATE TABLE Banco (
  id_banco INT PRIMARY KEY,
  nombre_banco VARCHAR(255),
  id_institucion INT,
  FOREIGN KEY (id_institucion) REFERENCES Institucion(id_institucion)
);

CREATE TABLE Clientes (
  id_clientes INT PRIMARY KEY,
  nombre_cliente VARCHAR(255),
  correo_cliente VARCHAR(255),
  telefono_cliente VARCHAR(255),
  rfc_cliente VARCHAR(255)
);

CREATE TABLE Tarjeta_de_credito (
  id_tarjeta INT PRIMARY KEY,
  nombre_tarjeta VARCHAR(255),
  nivel_tarjeta VARCHAR(255)
);

CREATE TABLE Solicitud (
  id_solicitud INT PRIMARY KEY,
  folio_solicitud VARCHAR(255),
  fecha_solicitud DATE,
  medio_solicitud VARCHAR(255)
);

CREATE TABLE Requisitos (
  id_requisito INT PRIMARY KEY,
  ingreso_mensual DECIMAL,
  historial_crediticio VARCHAR(255),
  monto_garantia DECIMAL,
  edad_minima INT,
  edad_maxima INT
);

CREATE TABLE Comisiones_tarjeta (
  id_comision INT PRIMARY KEY,
  anualidad DECIMAL,
  pago_tardio DECIMAL,
  intereses DECIMAL,
  cobranza DECIMAL
);

CREATE TABLE Beneficios_Tarjeta (
  id_beneficio INT PRIMARY KEY,
  puntos INT,
  cashback DECIMAL,
  reduccion_tasa_interes DECIMAL
);

CREATE TABLE Red_pago (
  id_red_pago INT PRIMARY KEY,
  visa BOOLEAN,
  mastercard BOOLEAN,
  americanexpress BOOLEAN
);

CREATE TABLE Beneficio_visa (
  id_beneficio_visa INT PRIMARY KEY,
  garantia_Extendida_visa BOOLEAN,
  reembolso_anual DECIMAL,
  concierge BOOLEAN
);

CREATE TABLE Beneficio_mastercard (
  id_beneficio_mastercard INT PRIMARY KEY,
  garantia_extendida_mc BOOLEAN,
  acceso_Salas_vip BOOLEAN,
  cine_2x1 BOOLEAN
);

CREATE TABLE Beneficio_amex (
  id_beneficio_amex INT PRIMARY KEY,
  garantia_Extendida_amex BOOLEAN,
  bono_bienvenida_amex DECIMAL,
  concierge_amex BOOLEAN
);

INSERT INTO Institucion (id_institucion, nombre_inst) VALUES 
(1, 'Banca Afirme, S.A., Institución de Banca Múltiple, Afirme Grupo Financiero'),
(2, 'Banca Mifel, S.A., Institución de Banca Múltiple, Grupo Financiero Mifel'),
(3, 'Banco Azteca, S.A., Institución de Banca Múltiple'),
(4, 'Banco del Bajío, S.A., Institución de Banca Múltiple'),
(5, 'Banco Invex, S.A., Institución de Banca Múltiple, Invex Grupo Financiero'),
(6, 'Banco Mercantil del Norte, S.A., Institución de Banca Múltiple, Grupo Financiero Banorte'),
(7, 'Banco Regional de Monterrey, S.A., Institución de Banca Múltiple, Banregio Grupo Financiero'),
(8, 'BanCoppel, S.A., Institución de Banca Múltiple'),
(9, 'BBVA Bancomer, S.A., Institución de Banca Múltiple, Grupo Financiero BBVA Bancomer'),
(10, 'HSBC México, S.A., Institución de Banca Múltiple, Grupo Financiero HSBC'),
(11, 'Santander Consumo, S.A. de C.V., SOFOM, E.R.'),
(12, 'Scotiabank, S.A., Institución de Banca Múltiple, Grupo Financiero Scotiabank Inverlat'),
(13, 'Sociedad Financiera Inbursa, S.A. de C.V., SOFOM, E.R., Grupo Financiero Inbursa'),
(14, 'Tarjetas Banamex, S.A de C.V., SOFOM, E.R.');

INSERT INTO Banco (id_banco, nombre_banco, id_institucion) VALUES 
(1, 'Afirme', 1),
(2, 'Banbajio', 4),
(3, 'Banco Azteca', 3),
(4, 'Bancoppel', 8),
(5, 'Banorte', 6),
(6, 'Banregio', 7),
(7, 'Bbva', 9),
(8, 'Citibanamex', 14),
(9, 'Hsbc', 10),
(10, 'Inbursa', 13),
(11, 'Invex', 5),
(12, 'Mifel', 2),
(13, 'Santander', 11),
(14, 'Scotiabank', 12);

INSERT INTO Clientes (id_clientes, nombre_cliente, correo_cliente, telefono_cliente, rfc_cliente) VALUES 
(1, 'Philip Flintoffe', 'pflintoffe0@auda.org.au', '970 434 6894', '87616e2564c8d'),
(2, 'Garry O''Nions', 'gonions1@google.com', '860 853 8408', '540196fe744ca'),
(3, 'Stanwood Merricks', 'smerricks2@fda.gov', '376 362 7825', 'beb2b02b337db'),
(4, 'Alyse Rigmand', 'arigmand3@networkadvertising.org', '833 802 7479', '6d6d8bdba2f6d'),
(5, 'Hill Elderbrant', 'helderbrant4@hugedomains.com', '495 258 2738', '1e544c495eb5e'),
(6, 'Devon Spurway', 'dspurway5@census.gov', '149 885 1421', '01a8065604e8b'),
(7, 'Granthem Buncher', 'gbuncher6@harvard.edu', '807 827 9873', '3e60f43361994'),
(8, 'Seamus Duthy', 'sduthy7@flavors.me', '212 575 6180', '030d72e6bfed3'),
(9, 'Yvette Metson', 'ymetson8@t.co', '686 461 5423', 'e8aa0f2fa5b05'),
(10, 'Cindy Burges', 'cburges9@booking.com', '666 656 8065', '4b9d6c5ff9a04'),
(11, 'Catie Casterot', 'ccasterota@freewebs.com', '212 750 6888', '78b05264a107a'),
(12, 'Jessalin Caffrey', 'jcaffreyb@amazon.co.uk', '406 954 5923', 'db51639af08ba'),
(13, 'Ezri Christoforou', 'echristoforouc@mtv.com', '116 686 3937', 'ba88ac9f349a7'),
(14, 'Phip Pashley', 'ppashleyd@bigcartel.com', '435 154 8640', '78849a4b34a4b'),
(15, 'Chelsey Louche', 'clouchee@nymag.com', '243 382 0611', 'c04ff553272a9'),
(16, 'Umberto Shelbourne', 'ushelbournef@craigslist.org', '179 795 1692', '3da2ad768a9da'),
(17, 'Farley Gyles', 'fgylesg@accuweather.com', '187 562 7732', '6e1f989a5f65b'),
(18, 'Mahalia Costard', 'mcostardh@narod.ru', '281 501 0921', '49588eda7cff8'),
(19, 'Matty Sanbrook', 'msanbrooki@qq.com', '543 619 5718', 'ffc7566270a4f');
(20, 'Danella Anakkin', 'qwertuers@gcorreo.cum', '538 776 9098', 'asfg578446uj')

INSERT INTO Tarjeta_de_credito (id_tarjeta, nombre_tarjeta, nivel_tarjeta) VALUES 
(1, 'Blanc World Elite', 'Infinite'),
(2, 'Clásica', 'WorldElite'),
(3, 'Oro', 'Oro'),
(4, 'Platinum', 'Platino'),
(5, 'Básica', 'Signature'),
(6, 'Heb', 'Signature'),
(7, 'Cemex', 'Signature'),
(8, 'Construrama', 'Signature'),
(9, 'Tigres', 'WorldElite'),
(10, 'Oro', 'Platino'),
(11, 'Platino', 'Signature'),
(12, 'World Elite', 'Signature'),
(14, 'Básica', 'Platino'),
(15, 'Tarjeta de Crédito Oro', 'Platino'),
(16, 'Azteca', 'Basica'),
(17, 'ABCredit Basica', 'Platino'),
(18, 'Visa Clásica', 'Platino'),
(19, 'Visa Clásica Garantizada', 'Signature'),
(20, 'Visa Básica Internacional', 'Oro'),
(21, 'Visa Oro Internacional', 'WorldElite'),
(22, 'Visa Platinum Internacional', 'Infinite'),
(24, 'Volaris 0', 'Oro'),
(25, 'Despegar Gold', 'WorldElite'),
(26, 'Despegar Platinum', 'Signature'),
(27, 'IKEA', 'Infinite'),
(28, 'Manchester United', 'Platino'),
(29, 'SíCard Platinum', 'Basica'),
(32, 'Volaris', 'Oro'),
(33, 'Volaris V2.0', 'Signature'),
(34, 'Básica', 'WorldElite'),
(35, 'AT&T Elite', 'Basica'),
(36, 'Platinum', 'Infinite'),
(37, 'Infinite', 'Signature'),
(38, 'AT&T', 'WorldElite'),
(39, 'Marriot Bonvoy', 'Oro'),
(40, 'Basica Nomina', 'Signature'),
(44, 'United', 'Platino'),
(45, 'Clásica', 'Basica'),
(46, 'Oro', 'Basica'),
(47, 'Mujer', 'Signature'),
(48, 'Tarjeta 40', 'Basica'),
(49, 'POR Tí de', 'WorldElite'),
(50, 'Tarjeta Ke Buena', 'Platino'),
(51, 'Tarjeta W Radio', 'Basica'),
(52, 'Clásica', 'WorldElite'),
(53, 'Básica', 'Platino'),
(54, 'Banregio', 'WorldElite'),
(55, 'Acceso Gold', 'Infinite'),
(56, 'Gold', 'Signature'),
(57, 'Platinum', 'WorldElite'),
(58, 'MÁS', 'Platino'),
(59, 'BanCoppel VISA', 'Oro'),
(60, 'Oro', 'Platino'),
(61, 'Platinum Infinite', 'WorldElite'),
(62, 'Tarjeta de Crédito Básica', 'WorldElite'),
(63, 'Azul', 'Infinite'),
(64, 'Educación', 'Signature'),
(65, 'Platinum', 'Infinite'),
(66, 'Apoyo a la Educación', 'WorldElite'),
(67, 'Crea', 'Infinite'),
(68, 'Mi Primera Tarjeta Bancomer', 'Platino'),
(69, 'Oro', 'Platino'),
(70, 'Rayados', 'Platino'),
(71, 'IPN', 'Infinite'),
(72, 'Tarjeta Afinidad UNAM', 'Signature'),
(73, 'Vive', 'WorldElite'),
(74, 'Clásica', 'WorldElite'),
(75, 'Oro', 'Signature'),
(76, 'Básica', 'Signature'),
(77, 'Advance Platinum', 'Platino'),
(78, 'Premier World Elite MasterCard', 'Oro'),
(79, 'Platinum MasterCard', 'Basica'),
(80, 'Viva', 'Infinite'),
(81, 'Viva Plus', 'Signature'),
(82, 'Zero', 'Infinite'),
(83, '2Now', 'Platino'),
(84, 'Air', 'Basica'),
(87, 'Like U', 'Infinite'),
(88, 'Gold', 'Infinite'),
(89, 'Platinum', 'Oro'),
(90, 'Samsung Members', 'Platino'),
(91, 'Basica', 'Signature'),
(92, 'Infinite', 'Basica'),
(93, 'Light', 'Basica'),
(94, 'Fiesta Rewards Oro', 'Basica'),
(95, 'Fiesta Rewards Platino', 'Basica'),
(96, 'Black Unlimited', 'Basica'),
(97, 'Free', 'Platino'),
(98, 'American Express', 'Signature'),
(99, 'Fiesta Rewards Clásica', 'WorldElite'),
(101, 'Aeroméxico Platinum', 'Platino'),
(102, 'Aeroméxico Infinite', 'Platino'),
(103, 'World Elite', 'Oro'),
(104, 'Scotia Travel Clásica', 'Basica'),
(105, 'Scotia Travel Oro', 'Oro'),
(106, 'Tasa Baja Clásica', 'Oro'),
(107, 'Tasa Baja Oro', 'Signature'),
(108, 'Scotia Básica', 'Signature'),
(109, 'Scotia Travel Platinum', 'Oro'),
(110, 'Scotia Travel World Elite', 'Platino'),
(111, 'Súper Tarjeta de Crédito Walmart', 'WorldElite'),
(112, 'Fundacion UNAM', 'Signature'),
(113, 'Black American Express', 'Infinite'),
(114, 'Óptima', 'Basica'),
(115, 'Clásica', 'WorldElite'),
(116, 'Enlace Médico', 'Basica'),
(117, 'Naturgy', 'Basica'),
(118, 'Oro', 'WorldElite'),
(119, 'Platinum', 'Oro'),
(122, 'Telcel Oro', 'Platino'),
(123, 'Tarjeta de Crédito Telmex', 'Infinite'),
(124, 'Affinity Card', 'Oro'),
(125, 'Simplicity', 'WorldElite'),
(126, 'B-Smart', 'Signature'),
(127, 'Citi/Aadvantage', 'Infinite'),
(128, 'Clásica', 'Basica'),
(129, 'Costco', 'Platino'),
(130, 'Oro', 'Oro'),
(131, 'Platinum', 'Platino')

INSERT INTO Solicitud (id_solicitud, folio_solicitud, fecha_solicitud, medio_solicitud) VALUES 
(1, '60-041-3566', '2023-11-27', 'electronico'),
(2, '93-750-2877', '2023-07-20', 'invitacion'),
(3, '73-200-2609', '2023-12-25', 'invitacion'),
(4, '21-297-3321', '2023-04-29', 'electronico'),
(5, '58-712-6861', '2023-03-13', 'electronico'),
(6, '80-427-1473', '2024-02-29', 'invitacion'),
(7, '01-414-8259', '2024-02-17', 'electronico'),
(8, '55-677-4092', '2023-12-22', 'invitacion'),
(9, '21-001-5376', '2023-07-24', 'electronico'),
(10, '75-524-5943', '2023-07-03', 'electronico'),
(11, '18-759-9600', '2024-02-10', 'sucursal'),
(12, '23-046-1317', '2024-01-21', 'electronico'),
(13, '28-544-4951', '2023-06-30', 'electronico'),
(14, '55-653-3026', '2024-02-06', 'invitacion'),
(15, '16-344-6366', '2023-11-16', 'sucursal'),
(16, '55-683-8061', '2023-11-10', 'electronico'),
(17, '59-224-6041', '2023-07-20', 'electronico'),
(18, '66-309-9734', '2023-09-12', 'electronico'),
(19, '17-862-3062', '2023-04-06', 'electronico');
(20, '16-924-1853', '2023-12-30', 'electronico');

INSERT INTO Requisitos (id_requisito, ingreso_mensual, historial_crediticio, monto_garantia, edad_minima, edad_maxima) VALUES 
(1, 5000.00, 'Bueno', 10000.00, 18, 60),
(2, 6000.00, 'Excelente', 12000.00, 20, 65),
(3, 7000.00, 'Malo', 14000.00, 22, 70),
(4, 8000.00, 'Bueno', 16000.00, 24, 75),
(5, 9000.00, 'Excelente', 18000.00, 26, 80),
(6, 10000.00, 'Malo', 20000.00, 28, 85),
(7, 11000.00, 'Bueno', 22000.00, 30, 90),
(8, 12000.00, 'Excelente', 24000.00, 32, 95),
(9, 13000.00, 'Malo', 26000.00, 34, 100),
(10, 14000.00, 'Bueno', 28000.00, 36, 105),
(11, 15000.00, 'Excelente', 30000.00, 38, 110),
(12, 16000.00, 'Malo', 32000.00, 40, 115),
(13, 17000.00, 'Bueno', 34000.00, 42, 120),
(14, 18000.00, 'Excelente', 36000.00, 44, 125),
(15, 19000.00, 'Malo', 38000.00, 46, 130),
(16, 20000.00, 'Bueno', 40000.00, 48, 135),
(17, 21000.00, 'Excelente', 42000.00, 50, 140),
(18, 22000.00, 'Malo', 44000.00, 52, 145),
(19, 23000.00, 'Bueno', 46000.00, 54, 150),
(20, 24000.00, 'Excelente', 48000.00, 56, 155);

INSERT INTO Comisiones_tarjeta (id_comision, anualidad, pago_tardio, intereses, cobranza) VALUES 
(1, 500.00, 50.00, 1.5, 100.00),
(2, 600.00, 60.00, 1.6, 110.00),
(3, 700.00, 70.00, 1.7, 120.00),
(4, 800.00, 80.00, 1.8, 130.00),
(5, 900.00, 90.00, 1.9, 140.00),
(6, 1000.00, 100.00, 2.0, 150.00),
(7, 1100.00, 110.00, 2.1, 160.00),
(8, 1200.00, 120.00, 2.2, 170.00),
(9, 1300.00, 130.00, 2.3, 180.00),
(10, 1400.00, 140.00, 2.4, 190.00),
(11, 1500.00, 150.00, 2.5, 200.00),
(12, 1600.00, 160.00, 2.6, 210.00),
(13, 1700.00, 170.00, 2.7, 220.00),
(14, 1800.00, 180.00, 2.8, 230.00),
(15, 1900.00, 190.00, 2.9, 240.00),
(16, 2000.00, 200.00, 3.0, 250.00),
(17, 2100.00, 210.00, 3.1, 260.00),
(18, 2200.00, 220.00, 3.2, 270.00),
(19, 2300.00, 230.00, 3.3, 280.00),
(20, 2400.00, 240.00, 3.4, 290.00);

INSERT INTO Beneficios_Tarjeta (id_beneficio, puntos, cashback, reduccion_tasa_interes) VALUES 
(1, TRUE, 0.01, 0.05),
(2, TRUE, 0.02, 0.10),
(3, TRUE, 0.03, 0.15),
(4, FALSE, 0.01, 0.20),
(5, TRUE, 0.05, 0.25),
(6, FALSE, 0.01, 0.30),
(7, TRUE, 0.01, 0.35),
(8, TRUE, 0.08, 0.40),
(9, TRUE, 0.01, 0.45),
(10, FALSE, 0.10, 0.50),
(11, TRUE, 0.11, 0.55),
(12, FALSE, 0.01, 0.60),
(13, TRUE, 0.01, 0.65),
(14, TRUE, 0.01, 0.70),
(15, TRUE, 0.01, 0.75),
(16, TRUE, 0.16, 0.80),
(17, TRUE, 0.01, 0.85),
(18, FALSE, 0.01, 0.90),
(19, TRUE, 0.01, 0.95),
(20, FALSE, 0.02, 1.00);

INSERT INTO Red_pago (id_red_pago, visa, mastercard, americanexpress) VALUES 
(1, TRUE, FALSE, FALSE),
(2, FALSE, TRUE, FALSE),
(3, FALSE, FALSE, TRUE),
(4, TRUE, FALSE, FALSE),
(5, FALSE, TRUE, FALSE),
(6, FALSE, FALSE, TRUE),
(7, TRUE, FALSE, FALSE),
(8, FALSE, TRUE, FALSE),
(9, FALSE, FALSE, TRUE),
(10, TRUE, FALSE, FALSE),
(11, FALSE, TRUE, FALSE),
(12, FALSE, FALSE, TRUE),
(13, TRUE, FALSE, FALSE),
(14, FALSE, TRUE, FALSE),
(15, FALSE, FALSE, TRUE),
(16, TRUE, FALSE, FALSE),
(17, FALSE, TRUE, FALSE),
(18, FALSE, FALSE, TRUE),
(19, TRUE, FALSE, FALSE),
(20, FALSE, TRUE, FALSE);

INSERT INTO Beneficio_visa (id_beneficio_visa, garantia_Extendida_visa, reembolso_anual, concierge) VALUES 
(1, TRUE, 0.01, FALSE),
(2, TRUE, 0.02, TRUE),
(3, TRUE, 0.03, FALSE),
(4, TRUE, 0.01, TRUE),
(5, TRUE, 0.02, FALSE),
(6, TRUE, 0.03, TRUE),
(7, TRUE, 0.01, FALSE),
(8, TRUE, 0.01, TRUE),
(9, TRUE, 0.02, FALSE),
(10, TRUE, 0.01, TRUE),
(11, TRUE, 0.01, FALSE),
(12, TRUE, 0.02, TRUE),
(13, TRUE, 0.01, FALSE),
(14, TRUE, 0.03, TRUE),
(15, TRUE, 0.03, FALSE),
(16, TRUE, 0.01, TRUE),
(17, TRUE, 0.01, FALSE),
(18, TRUE, 0.01, TRUE),
(19, TRUE, 0.02, FALSE),
(20, TRUE, 0.02, TRUE);

INSERT INTO Beneficio_mastercard (id_beneficio_mastercard, garantia_extendida_mc, acceso_Salas_vip, cine_2x1) VALUES 
(1, TRUE, TRUE, TRUE),
(2, TRUE, TRUE, TRUE),
(3, TRUE, TRUE, TRUE),
(4, TRUE, TRUE, TRUE),
(5, TRUE, TRUE, TRUE),
(6, TRUE, TRUE, TRUE),
(7, TRUE, TRUE, TRUE),
(8, TRUE, TRUE, TRUE),
(9, TRUE, TRUE, TRUE),
(10, TRUE, TRUE, TRUE),
(11, TRUE, TRUE, TRUE),
(12, TRUE, TRUE, TRUE),
(13, TRUE, TRUE, TRUE),
(14, TRUE, TRUE, TRUE),
(15, TRUE, TRUE, TRUE),
(16, TRUE, TRUE, TRUE),
(17, TRUE, TRUE, TRUE),
(18, TRUE, TRUE, TRUE),
(19, TRUE, TRUE, TRUE),
(20, TRUE, TRUE, TRUE);

INSERT INTO Beneficio_amex (id_beneficio_amex, garantia_Extendida_amex, bono_bienvenida_amex, concierge_amex) VALUES 
(1, TRUE, 10000, TRUE),
(2, TRUE, 20000, TRUE),
(3, TRUE, 40000, TRUE),
(4, TRUE, 10000, TRUE),
(5, TRUE, 20000, TRUE),
(6, TRUE, 40000, TRUE),
(7, TRUE, 10000, TRUE),
(8, TRUE, 20000, TRUE),
(9, TRUE, 40000, TRUE),
(10, TRUE, 10000, TRUE),
(11, TRUE, 20000, TRUE),
(12, TRUE, 40000, TRUE),
(13, TRUE, 10000, TRUE),
(14, TRUE, 20000, TRUE),
(15, TRUE, 40000, TRUE),
(16, TRUE, 10000, TRUE),
(17, TRUE, 20000, TRUE),
(18, TRUE, 40000, TRUE),
(19, TRUE, 10000, TRUE),
(20, TRUE, 20000, TRUE);


