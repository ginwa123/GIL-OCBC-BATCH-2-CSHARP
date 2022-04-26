DROP TABLE IF EXISTS products;
CREATE TABLE products
(
    productCode VARCHAR(50) NOT NULL PRIMARY KEY ,
    productName VARCHAR(25) NOT NULL,
    productLine INT NOT NULL FOREIGN KEY REFERENCES productLines(productLine) ,
    productScale VARCHAR(25) NOT NULL,
    productVendor VARCHAR(25) NOT NULL,
    productDescription TEXT NOT NULL,
    quantityInStock INT NOT NULL,
    buyPrice DECIMAL NOT NULL,
    MSRP DECIMAL NOT NULL,--  manufacturer suggested retail price aka harga eceran aka harga jual
);
INSERT INTO products
    (productCode, productName, productLine, productScale, productVendor, productDescription,
    quantityInStock, buyPrice, MSRP)
VALUES
    ('AAS2314FS', 'Sedan A423 Gemerlap' , '1', 'Bagus', 'Tesca',
        'Sedang A423 merupakan mobil automobile dengan kecerdasan buatan', '20', '2000', '3000'),
    ('AZSDS4FS', 'PICKUP ADV23 Gemerlap' , '1', 'Sangat Bagus', 'BNSD',
        'PICKUP ADV23 merupakan mobil automobile dengan kecerdasan buatan', '20', '1000', '5000'),
    ('AMNLSDSD', 'Smartphone Model J' , '3', 'Sangat Bagus', 'BNSD',
        'Smartphone Model merupakan smartphone bestseller di dunia', '20', '1000', '3000'),
    ('SDLLMASA', 'Gujii' , '4', 'Bagus', 'BNSD',
        'Gujii merupakan tas dengan kecerdasan buatan', '20', '1000', '3000'),
    ('DSMASLSS', 'BSDDDC' , '5', 'Sangat Bagus', 'BNSD',
        'AASJDS merupakan komputer keamanan kecerdasan buatan', '20', '1000', '3000'),   
    ('ASVNXLX', 'Binder Tipe Z' , '6', 'Sangat Bagus', 'JSND',
        'Binder tipe Z merupakan buku dengan kualitas anti terbakar', '20', '2000', '6000'),
    ('MVOASKDS', 'Pensil Z' , '7', 'Sangat Bagus', 'SVXZ',
        'Pensil Z merupakan Pensil dengan dengan bahan karbon terbaik di dunia', '20', '3000', '7000'),
    ('ASVASDAS', 'GH Glow' , '8', 'Sangat Bagus', 'XCAS',
        'GH Glow merupakan Skin care yang dapat membuat kulit glow up dalam hitungan detik', '20', '2000', '3000'),
    ('SADASPJJ', 'Smartwatch tipe z' , '9', 'Sangat Bagus', 'MFLS',
        'Smartwatch tipe z merupakan jam dengan kemampuan tahan air dan api', '20', '1000', '3000'),
    ('SDODVJOD', 'Ayam Paha food' , '10', 'Sangat Bagus', 'OKDS',
        'Ayam Paha food merupakan merupakan makan yang mengandung protein, vitamin a, b, c, d, e', '20', '4000', '6000');
SELECT *
FROM products;


