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


    