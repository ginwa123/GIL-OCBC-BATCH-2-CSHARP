DROP TABLE IF EXISTS productLines;
CREATE TABLE productLines
(
    productLine INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    textDescription TEXT NULL,
    htmlDescription VARCHAR(255) NULL,
    image VARCHAR(255) NULL
);
INSERT INTO productLines
    (textDescription)
VALUES
    ( 'Otomotif'),
    ( 'Meja'),
    ( 'Handphone'),
    ( 'Fashion'),
    ( 'Komputer'),
    ( 'Buku'),
    ('Alat Tulis'),
    ('Alat Make up'),
    ('Jam tangan'),
    ('Makanan ');
SELECT *
FROM productLines;


