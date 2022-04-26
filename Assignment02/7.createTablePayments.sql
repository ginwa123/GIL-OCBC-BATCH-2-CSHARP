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


