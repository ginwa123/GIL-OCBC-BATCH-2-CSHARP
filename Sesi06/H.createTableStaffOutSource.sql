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




