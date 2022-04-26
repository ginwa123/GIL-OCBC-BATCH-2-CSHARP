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


    