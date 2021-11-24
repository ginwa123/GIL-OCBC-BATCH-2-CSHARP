-- 1
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
    ( 'otomotif gemerlap'),
    ( 'perabotan gemerlap'),
    ( 'gadget gemerlap'),
    ( 'fashion gemerlap'),
    ( 'rumah gemerlap');
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
    MSRP DECIMAL NOT NULL, --  manufacturer suggested retail price aka harga eceran aka harga jual
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
        'Smartphone Model merupakan smartphone bestseller di dunia', '20', '1000000', '500022223'),
    ('SDLLMASA', 'Gujii' , '4', 'Bagus', 'BNSD',
        'Gujii merupakan tas dengan kecerdasan buatan', '20', '10000000', '500000000'),
    ('DSMASLS', 'BSDDDC' , '5', 'Sangat Bagus', 'BNSD',
        'BSDDDC merupakanrumah dengan keamanan kecerdasan buatan', '20', '10000000', '5000000000');
SELECT *
FROM products;

-- 4
DROP TABLE IF EXISTS offices;
CREATE TABLE offices
(
    officeCode INT NOT NULL PRIMARY KEY,
    city VARCHAR(25) NOT NULL,
    phone VARCHAR(25) NOT NULL,
    addressLine VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50) NULL,
    state VARCHAR(25) NOT NULL,
    postalCode INT NOT NULL,
    territory VARCHAR(25) NOT NULL,
);
INSERT INTO offices
    (officeCode, city, phone, addressLine, [state], postalCode, territory)
VALUES
    ('500', 'Surabaya', '+33342323' , 'JL HR Muhammad no 666', 'Jawa Timur', '60443', 'Indonesia' ),
    ('501', 'Surabaya', '+33342324' , 'JL HR Muhammad no 322', 'Jawa Timur', '60443', 'Indonesia' ),
    ('502', 'Jember', '+33342325' , 'JL Wahid Hasyim', 'Jawa Timur', '60444', 'Indonesia' ),
    ('503', 'Madura', '+33342326' , 'JL Hatta', 'Jawa Timur', '60445', 'Indonesia' ),
    ('504', 'Malang', '+33342327' , 'JL Ketintang', 'Jawa Timur', '60446', 'Indonesia' );

SELECT *
FROM offices;


-- 5
DROP TABLE IF EXISTS employees;
CREATE TABLE employees
(
    employeeNumber INT NOT NULL PRIMARY KEY,
    employeeNumberReferences INT NULL FOREIGN KEY REFERENCES employees(employeeNumber),
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NULL,
    extension VARCHAR(25) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    reportsTo VARCHAR(50) NULL,
    jobTitle VARCHAR(50) NOT NULL,
    officeCode INT NOT NULL FOREIGN KEY REFERENCES  offices(officeCode),
);
INSERT INTO employees
    (employeeNumber, firstName,  extension, email, officeCode, jobTitle)
VALUES
    ('10001', 'Gilang', '1', 'gilangtrisetya123@gmail.com' , '500', 'Full Stack Engineer Intern' ),
    ('10002', 'Paimen',  '1', 'paimen@gmail.com' , '503', 'Full Stack Engineer Intern' ),
    ('10003', 'Paijo', '1', 'paijo@gmail.com' , '502', 'Sales' ),
    ('10004', 'Selamet',  '1', 'selamet@gmail.com' , '504', 'Sales Intern' ),
    ('10005', 'Santoso',  '1', 'santoso@gmail.com' , '501', 'Sales Intern' );

INSERT INTO employees
    (employeeNumber, employeeNumberReferences, firstName,  extension, email, officeCode, jobTitle)
VALUES
    ('10006', '10001' , 'Tekyung', '1', 'tekyung@gmail.com' , '501', 'Sales Intern' ),
    ('10007', '10001' , 'Jungkuk', '1', 'jungkuk@gmail.com' , '501', 'Hr Intern' ),
    ('10008', '10003' , 'John', '1', 'jogn@gmail.com' , '501', 'Hr Intern' );
SELECT *
FROM employees;


-- 6
DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(
    customerNumber INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    customerName VARCHAR(50) NOT NULL,
    contactFirstName VARCHAR(50) NOT NULL,
    contactLastName VARCHAR(50) NULL,
    phone VARCHAR(25) NOT NULL,
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
    ('Alicia', 'Alicia', 'Key', '+6285252605452', 'DK.Karangan Selatan 51',
        'Surabaya', 'Jawa timur', '60226', 'Indonesia', '10006', '3000000000000'),
    ('Yuki', 'Yuki', 'Sasho', '+1882332325452', 'Nani',
        'Tokyo', 'Tokyo', '12333', 'Japan', '10006', '650000000000000');
SELECT *
FROM customers;


-- 7
DROP TABLE IF EXISTS payments;
CREATE TABLE payments
(
    checkNumber BIGINT NOT NULL PRIMARY KEY,
    customerNumber INT NOT NULL UNIQUE FOREIGN KEY  REFERENCES customers(customerNumber),
    paymentDate DATETIME NOT NULL,
    amount DECIMAL NOT NULL
);
INSERT INTO payments
    (checkNumber, customerNumber, paymentDate, amount)
VALUES
    ('7235123121', '1', '2021-10-01', '2000000'),
    ('1234231341', '2', '2021-10-05', '63000000'),
    ('5335213123', '3', '2021-10-06', '54000000'),
    ('6512983752', '4', '2021-10-10', '42000000'),
    ('6412048231', '5', '2021-10-11', '42000000');
SELECT *
FROM payments;

-- 8 
DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    orderNumber BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
    customerNumber INT NOT NULL FOREIGN KEY REFERENCES customers(customerNumber),
    orderDate DATETIME NOT NULL, -- tanggal membeli barang / layanan
    requiredDate DATETIME NOT NULL, -- tanggal barang sampai
    shippedDate DATETIME NULL, -- tanggal pengiriman
    status VARCHAR(25) NOT NULL,
    comments TEXT NULL,

);
INSERT INTO orders
    (customerNumber, orderDate, requiredDate, shippedDate, [status], comments)
VALUES
    ( '1', '2021-10-12', '2021-10-15', '2021-10-13', 'Selesai', 'pengiriman cepat' ),
    ( '1', '2021-10-13', '2021-10-16', '2021-10-14', 'Selesai', 'pengiriman cepat' ),
    ( '3', '2021-10-15', '2021-10-18', '2021-10-16', 'Selesai', 'pengiriman lambat' ),
    ( '4', '2021-10-17', '2021-10-20', '2021-10-18', 'Packing', NULL ),
    ( '5', '2021-10-18', '2021-10-21', '2021-10-19', 'Packing', NULL );

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
    ('2', 'AMNLSDSD', '3' , '500022223'),
    ('3', 'AAS2314FS', '13' , '3000'),
    ('4', 'SDLLMASA', '12' , '500000000'),
    ('5', 'SDLLMASA', '12' , '500000000');
SELECT *
FROM orderDetails;




