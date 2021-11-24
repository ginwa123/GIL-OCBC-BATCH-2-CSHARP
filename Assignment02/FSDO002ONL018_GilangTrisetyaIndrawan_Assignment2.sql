-- 1
USE master;
CREATE DATABASE BANK_GINWA;

-- 2
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

-- 3
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

-- 4
DROP TABLE IF EXISTS offices;
CREATE TABLE offices
(
    officeCode INT NOT NULL PRIMARY KEY IDENTITY(500,1),
    city VARCHAR(25) NOT NULL,
    phone VARCHAR(25) NOT NULL UNIQUE,
    addressLine VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50) NULL,
    state VARCHAR(25) NOT NULL,
    postalCode INT NOT NULL,
    territory VARCHAR(25) NOT NULL,
);
INSERT INTO offices
    ( city, phone, addressLine, [state], postalCode, territory)
VALUES
    ('Surabaya', '+33342323' , 'JL HR Muhammad no 666', 'Jawa Timur', '60443', 'Indonesia' ),
    ( 'Surabaya', '+33342324' , 'JL HR Muhammad no 322', 'Jawa Timur', '60443', 'Indonesia' ),
    ( 'Jember', '+33342325' , 'JL Wahid Hasyim', 'Jawa Timur', '60444', 'Indonesia' ),
    ( 'Madura', '+33342326' , 'JL Hatta', 'Jawa Timur', '60445', 'Indonesia' ),
    ( 'Malang', '+33342327' , 'JL Ketintang', 'Jawa Timur', '60446', 'Indonesia' ),
    ( 'Bangil', '+33342328' , 'JL Timur', 'Jawa Timur', '60447', 'Indonesia' ),
    ( 'Banyuwangi', '+33342329' , 'JL Selatan', 'Jawa Timur', '60448', 'Indonesia' ),
    ( 'Bali', '+333423210' , 'JL Tenggara', 'Jawa Timur', '60449', 'Indonesia' ),
    ( 'Ponorogo', '+333423211' , 'JL Barat', 'Jawa Timur', '60450', 'Indonesia' ),
    ( 'Sidoarjo', '+333423212' , 'JL Kali', 'Jawa Timur', '60451', 'Indonesia' );
SELECT *
FROM offices;

-- 5
DROP TABLE IF EXISTS employees;
CREATE TABLE employees
(
    employeeNumber INT NOT NULL PRIMARY KEY IDENTITY(10001, 1),
    employeeNumberReferences INT NULL FOREIGN KEY REFERENCES employees(employeeNumber),
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NULL,
    extension VARCHAR(25) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    reportsTo INT NULL FOREIGN KEY REFERENCES employees(employeeNumber),
    jobTitle VARCHAR(50) NOT NULL,
    officeCode INT NOT NULL FOREIGN KEY REFERENCES  offices(officeCode),
);
INSERT INTO employees
    (firstName, extension, email, officeCode, jobTitle, reportsTo)
VALUES
    ('Gilang', '1', 'gilangtrisetya123@gmail.com' , '500', 'Full Stack Engineer Intern' , '10007'),
    ( 'Paimen', '1', 'paimen@gmail.com' , '503', 'Full Stack Engineer Intern', '10007'),
    ( 'Paijo', '1', 'paijo@gmail.com' , '502', 'Sales' , '10007'),
    ( 'Selamet', '1', 'selamet@gmail.com' , '504', 'Sales Intern', '10007' ),
    ( 'Santoso', '1', 'santoso@gmail.com' , '501', 'Sales Intern' , '10007'),
    ( 'Jimin', '1', 'jimin@gmail.com' , '508', 'Manager', NULL ),
    ( 'Paidi', '1', 'paidi@gmail.com' , '507', 'Manager', NULL );

INSERT INTO employees
    ( employeeNumberReferences, firstName, extension, email, officeCode, jobTitle, reportsTo)
VALUES
    ( '10001' , 'Tekyung', '1', 'tekyung@gmail.com' , '501', 'Sales Intern', '10008' ),
    ( '10001' , 'Jungkuk', '1', 'jungkuk@gmail.com' , '501', 'Hr Intern' , '10008'),
    ( '10003' , 'John', '1', 'jogn@gmail.com' , '501', 'Hr Intern' , '10008');
SELECT *
FROM employees;

-- 6
DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(
    customerNumber BIGINT NOT NULL PRIMARY KEY IDENTITY(100,1),
    customerName VARCHAR(50) NOT NULL,
    contactFirstName VARCHAR(50) NOT NULL,
    contactLastName VARCHAR(50) NULL,
    phone VARCHAR(25) NOT NULL UNIQUE,
    addressLine VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50) NULL,
    city VARCHAR(25) NOT NULL,
    state VARCHAR(25) NOT NULL,
    postalCode INT NOT NULL,
    country VARCHAR(25) NOT NULL,
    creditLimit DECIMAL NOT NULL,
    salesRepEmployeeNumber INT NOT NULL FOREIGN KEY REFERENCES employees(employeeNumber),
);
INSERT INTO customers
    (customerName, contactFirstName, contactLastName , phone, addressLine, city, [state],
    postalCode,country, salesRepEmployeeNumber, creditLimit)
VALUES
    ('Gilang Trisetya', 'Gilang', 'Trisetya Indrawan', '+6281258602456', 'DK.Karangan Tengah 51',
        'Surabaya', 'Jawa timur', '60227', 'Indonesia', '10003', '90000000000000'),
    ('Mecury', 'Mecury', NULL, '+6283252105446', 'DK.Karangan Timur 10',
        'Surabaya', 'Jawa timur', '60227', 'Indonesia', '10004', '140000000000'),
    ('Fredy', 'Fredy', NULL, '+6285252605452', 'DK.Karangan Barat 51',
        'Surabaya', 'Jawa timur', '60226', 'Indonesia', '10005', '3000000000'),
    ('Alicia', 'Alicia', 'Key', '+6285252605453', 'DK.Karangan Selatan 51',
        'Surabaya', 'Jawa timur', '60226', 'Indonesia', '10006', '3000000000000'),
    ('Yuki', 'Yuki', 'Sasho', '+1882332325452', 'Nani',
        'Tokyo', 'Tokyo', '12333', 'Japan', '10006', '650000000000000'),
    ('Naruto', 'Naruto', 'Suzuki', '+1882332325453', 'Nani 2',
        'Tokyo', 'Tokyo', '12333', 'Japan', '10006', '650000000000000'),
    ('Sazi', 'Sazi', 'Maeda', '+1882332325454', 'Nani 3',
        'Tokyo', 'Tokyo', '12333', 'Japan', '10006', '650000000000000'),
    ('Hiroshima', 'Hiroshima', 'Nagasaki', '+1882332325455', 'Nani 4',
        'Tokyo', 'Tokyo', '12333', 'Japan', '10006', '650000000000000'),
    ('Maeda', 'Maeda', 'Yui', '+1882332325456', 'Nani 5',
        'Tokyo', 'Tokyo', '12333', 'Japan', '10006', '650000000000000'),
    ('Itachi', 'Itachi', 'Naruto', '+1882332325457', 'Nani 6',
        'Tokyo', 'Tokyo', '12333', 'Japan', '10006', '650000000000000');
SELECT *
FROM customers;

-- 7
DROP TABLE IF EXISTS payments;
CREATE TABLE payments
(
    checkNumber BIGINT NOT NULL PRIMARY KEY,
    customerNumber BIGINT NOT NULL UNIQUE FOREIGN KEY  REFERENCES customers(customerNumber),
    paymentDate DATETIME NOT NULL,
    amount DECIMAL NOT NULL
);
INSERT INTO payments
    (checkNumber, customerNumber, paymentDate, amount)
VALUES
    ('7235123121', '100', '2021-10-01', '2000000'),
    ('1234231341', '101', '2021-10-05', '63000000'),
    ('5335213123', '102', '2021-10-06', '54000000'),
    ('6512983752', '103', '2021-10-10', '2000000'),
    ('6412048231', '104', '2021-10-11', '52300000'),
    ('2932108322', '105', '2021-10-13', '53240000'),
    ('1231252312', '106', '2021-10-14', '2310000'),
    ('5213213223', '107', '2021-10-14', '5324200000'),
    ('6234234233', '108', '2021-10-15', '2131000'),
    ('5324212311', '109', '2021-10-16', '2310000');
SELECT *
FROM payments;

-- 8
DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    orderNumber BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
    customerNumber BIGINT NOT NULL FOREIGN KEY REFERENCES customers(customerNumber),
    orderDate DATETIME NOT NULL, -- tanggal membeli barang / layanan
    requiredDate DATETIME NOT NULL, -- tanggal barang sampai
    shippedDate DATETIME NULL, -- tanggal pengiriman
    status VARCHAR(25) NOT NULL,
    comments TEXT NULL,

);
INSERT INTO orders
    (customerNumber, orderDate, requiredDate, shippedDate, [status], comments)
VALUES
    ( '100', '2021-10-12', '2021-10-15', '2021-10-13', 'Selesai', 'pengiriman cepat' ),
    ( '101', '2021-10-13', '2021-10-16', '2021-10-14', 'Selesai', 'pengiriman cepat' ),
    ( '102', '2021-10-15', '2021-10-18', '2021-10-16', 'Selesai', 'pengiriman lambat' ),
    ( '103', '2021-10-17', '2021-10-20', '2021-10-18', 'Packing', NULL ),
    ( '104', '2021-10-18', '2021-10-21', '2021-10-19', 'Packing', NULL ),
    
    ( '105', '2021-10-18', '2021-10-21', '2021-10-19', 'Packing', NULL ),
    ( '106', '2021-10-18', '2021-10-21', '2021-10-19', 'Packing', NULL ),
    ( '107', '2021-10-18', '2021-10-21', '2021-10-19', 'Packing', NULL ),
    ( '108', '2021-10-18', '2021-10-21', '2021-10-19', 'Packing', NULL ),
    ( '109', '2021-10-18', '2021-10-21', '2021-10-19', 'Packing', NULL );

SELECT *
FROM orders;

-- 9
DROP TABLE IF EXISTS orderDetails;
CREATE TABLE orderDetails
(
    orderNumber BIGINT NOT NULL  FOREIGN KEY REFERENCES orders(orderNumber),
    productCode VARCHAR(50) NOT NULL FOREIGN KEY REFERENCES products(productCode) ,
    quantity INT NOT NULL,
    priceEach DECIMAL NOT NULL,
    orderLineNumber INT IDENTITY(1,1) NOT NULL
);
INSERT INTO orderDetails
    (orderNumber, productCode, quantity, priceEach)
VALUES
    ('1', 'AAS2314FS', '14' , '3000' ),
    ('2', 'AZSDS4FS', '3' , '5000'),
    ('3', 'AAS2314FS', '13' , '3000'),
    ('4', 'AMNLSDSD', '12' , '3000'),
    ('5', 'AMNLSDSD', '3' , '3000'),
    ('6', 'AMNLSDSD', '5' , '3000'),
    ('7', 'ASVNXLX', '3' , '6000'),
    ('8', 'ASVNXLX', '4' , '6000'),
    ('9', 'SDLLMASA', '2' , '3000'),
    ('10', 'SADASPJJ', '1' , '3000');
SELECT *
FROM orderDetails;






    
    

