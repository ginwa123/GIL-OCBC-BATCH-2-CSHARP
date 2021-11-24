
-- A
CREATE DATABASE staff;

-- B
DROP TABLE IF EXISTS data_staff;
CREATE TABLE data_staff
(
    nik INT NOT NULL PRIMARY KEY, 
    nama VARCHAR(50) NOT NULL,
    alamat VARCHAR(200) NOT NULL,
    handphone VARCHAR(15) NULL
);
SELECT * FROM data_staff;

-- C
INSERT INTO data_staff
    (nik, nama, alamat, handphone)
VALUES
    ('1710651109', 'GilangTrisetyaIndrawan', 'DK.Karangan Tengah51', '+6281259701505');

SELECT * FROM data_staff;

-- D
INSERT INTO data_staff
    (nik, nama, alamat, handphone)
VALUES
    ('1710651110', 'Anghie', 'Pulosari Kodam', '6281542323425'),
    ('1710651111', 'Budi Sumajo', 'Gunung Sar', '62815423234232'),
    ('1710651112', 'Hartono', 'Ketintang', '6281542323115');

SELECT * FROM data_staff;

-- E
ALTER TABLE data_staff ADD joinDate DATETIME NULL;
GO

INSERT INTO data_staff
    (nik, nama, alamat, handphone, joinDate)
VALUES
    ('1710651113', 'Bayu', 'DK.Karangan TImur 51', '+6281298751505', '2021-10-03'),
    ('1710651114', 'Wersda', 'DK.Karangan TImur 12', '+6281293213215', '2021-10-03');

SELECT * FROM data_staff;

-- F
SELECT TOP(2) * FROM data_staff ;

-- G
SELECT TOP(3) * FROM data_staff ;

-- H
DROP TABLE IF EXISTS staff_out_source;
CREATE TABLE staff_out_source
(
    nik INT NOT NULL PRIMARY KEY, 
    nama VARCHAR(50) NOT NULL,
    alamat VARCHAR(200) NOT NULL,
    handphone VARCHAR(15) NULL,
    joinDate DATETIME null
);

SELECT * FROM staff_out_source;

-- I
INSERT INTO staff_out_source
    (nik, nama, alamat, handphone, joinDate)
VALUES
    ('1710651115', 'Ger', 'DK.Karangan TImur 10', '+6281123124123', '2021-10-01'),
    ('1712351116', 'Susi', 'DK.Karangan TImur 23', '+6212372237412', '2021-10-02'),
    ('1712351117', 'Paijo', 'DK.Karangan TImur 100', '+6227545543534', '2021-10-03'),
    ('1712351118', 'Budi Mal', 'DK.Karangan TImur 300', '+6252364363523', '2021-10-03'),
    ('1712351119', 'Tukimen', 'DK.Karangan TImur 522', '+6221312321312', '2021-10-03'),
    ('1712351120', 'Jungkuk', 'DK.Karangan TImur 231', '+6232132131232', '2021-10-06'),
    ('1712351121', 'Tekyung', 'DK.Karangan TImur 221', '+6262323423423', '2021-10-07'),
    ('1712351122', 'Agus', 'DK.Karangan TImur 11', '+6262363262335', '2021-10-08'),
    ('1712351123', 'Selamet', 'DK.Karangan TImur 5123', '+6232423423623', '2021-10-09'),
    ('1712351124', 'JABANG', 'DK.Karangan TImur 2131', '+6232236234234', '2021-10-10'),
    ('1710651113', 'Bayu', 'DK.Karangan TImur 51', '+6281298751505', '2021-10-03'),
    ('1710651114', 'Wersda', 'DK.Karangan TImur 12', '+6281293213215', '2021-10-03');

SELECT *
FROM staff_out_source;
    
-- J
SELECT * FROM data_staff AS ds
INNER JOIN staff_out_source AS sos ON ds.joinDate=sos.joinDate;

-- K
SELECT * FROM data_staff AS ds
RIGHT JOIN staff_out_source AS sos ON ds.nik=sos.nik;

-- L
SELECT * FROM data_staff AS ds
LEFT JOIN staff_out_source AS sos ON ds.nik=sos.nik;

-- M
SELECT * FROM data_staff
UNION ALL
SELECT * FROM staff_out_source;


