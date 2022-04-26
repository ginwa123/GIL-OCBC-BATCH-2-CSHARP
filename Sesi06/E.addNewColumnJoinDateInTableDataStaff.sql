ALTER TABLE data_staff ADD joinDate DATETIME NULL;
GO

INSERT INTO data_staff
    (nik, nama, alamat, handphone, joinDate)
VALUES
    ('1710651113', 'Bayu', 'DK.Karangan TImur 51', '+6281298751505', '2021-10-03'),
    ('1710651114', 'Wersda', 'DK.Karangan TImur 12', '+6281293213215', '2021-10-03');

SELECT * FROM data_staff;
