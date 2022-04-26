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


