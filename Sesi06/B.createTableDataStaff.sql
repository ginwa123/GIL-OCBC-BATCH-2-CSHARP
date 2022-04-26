DROP TABLE IF EXISTS data_staff;
CREATE TABLE data_staff
(
    nik INT NOT NULL PRIMARY KEY, 
    nama VARCHAR(50) NOT NULL,
    alamat VARCHAR(200) NOT NULL,
    handphone VARCHAR(15) NULL
);
SELECT * FROM data_staff;

