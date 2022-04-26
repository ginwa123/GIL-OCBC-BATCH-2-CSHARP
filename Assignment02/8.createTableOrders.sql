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


