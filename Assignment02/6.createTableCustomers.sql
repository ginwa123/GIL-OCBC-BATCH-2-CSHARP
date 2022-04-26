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


