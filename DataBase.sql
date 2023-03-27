-- Creamos una base de datos nueva
DROP DATABASE IF EXISTS bike_shop;
CREATE DATABASE bike_shop;
USE bike_shop;

-- Creamos la Tabla de las bicicletas
CREATE TABLE IF NOT EXISTS bikes( 
    bike_id         INT PRIMARY KEY AUTO_INCREMENT,
    name_bike       VARCHAR(200) NOT NULL,
    brand           VARCHAR(20) NOT NULL,
    year_bike       DATE NOT NULL,
    color           VARCHAR(15) NOT NULL,
    size_whell      VARCHAR(12) NOT NULL,
    price           DECIMAL(10,2) NOT NULL,
    image           BLOB,
    CHECK (price > 0)
);

CREATE INDEX name_bike_index on bikes(name_bike);

-- Creamos la tabla de tienda
CREATE TABLE IF NOT EXISTS shops(
    shop_id         INT PRIMARY KEY AUTO_INCREMENT UNIQUE KEY,
    bike_id         INT,
    name_shop       VARCHAR(20) NOT NULL,
    direction       VARCHAR(30) NOT NULL,
    postal_code     VARCHAR(10) NOT NULL,
    phone_number    VARCHAR(20) NOT NULL,
    FOREIGN KEY (bike_id) REFERENCES bikes
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Creamos la tabla de los clientes
CREATE TABLE IF NOT EXISTS customers(
    customer_id     INT PRIMARY KEY AUTO_INCREMENT,
    name_customer   VARCHAR(20) NOT NULL,
    direction       VARCHAR(30) NOT NULL,
    postal_code     VARCHAR(10) NOT NULL,
    phone_number    VARCHAR(20) NOT NULL,
    email           VARCHAR(200) NOT NULL
);

-- Creamos la tabla de ventas
CREATE TABLE IF NOT EXISTS sales(
    sale_id         INT PRIMARY KEY AUTO_INCREMENT,
    shop_id         INT,
    customer_id     INT,
    departure_date  DATE NOT NULL,
    status_order    VARCHAR(30) NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shops
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customers
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


-- VALORES --

-- QUERIES DE LA TABLA DE BIKES
INSERT INTO bikes (name_bike, brand, year_bike, color, size_whell, price) VALUES ('Mountain Bike', 'Giant', '2022-01-01', 'black', '26', '499.99');
INSERT INTO bikes (name_bike, brand, year_bike, color, size_whell, price) VALUES ('Road Bike', 'Orbea', '2020-05-06', 'blue', '28', '700.00');
INSERT INTO bikes (name_bike, brand, year_bike, color, size_whell, price) VALUES ('Road Bike e-bike', 'Mondraker', '2016-04-10', 'green', '29', '1000.00');
INSERT INTO bikes (name_bike, brand, year_bike, color, size_whell, price) VALUES ('Mountain Bike', 'BH', '2023-01-23', 'black', '29', '190.00');
INSERT INTO bikes (name_bike, brand, year_bike, color, size_whell, price) VALUES ('Road Bike', 'Orbea', '2019-07-18', 'yellow', '28', '850.00');

-- QUERIES DE LA TABLA DE TIENDAS
INSERT INTO shops (bike_id, name_shop, direction, postal_code, phone_number) VALUES (1, 'Cycle World', '456 Park Ave', '67890', '5555555556');
INSERT INTO shops (bike_id, name_shop, direction, postal_code, phone_number) VALUES (2, 'Ride on Bikes', '789 Elm St', '09876', '5555555557');
INSERT INTO shops (bike_id, name_shop, direction, postal_code, phone_number) VALUES (3, 'Bike Emporium', '321 Oak St', '54321', '5555555558');
INSERT INTO shops (bike_id, name_shop, direction, postal_code, phone_number) VALUES (4, 'The Bike Shop', '654 Pine St', '24689', '5555555559');
INSERT INTO shops (bike_id, name_shop, direction, postal_code, phone_number) VALUES (5, 'Bike Avenue', '987 Cedar St', '13579', '5555555550');

-- QUERIES DE LA TABLA DE VENTAS 
INSERT INTO sales (shop_id, departure_date, status_order) VALUES (1, '2022-01-01', 'New');
INSERT INTO sales (shop_id, departure_date, status_order) VALUES (2, '2022-02-01', 'Used');
INSERT INTO sales (shop_id, departure_date, status_order) VALUES (3, '2022-03-01', 'Used');
INSERT INTO sales (shop_id, departure_date, status_order) VALUES (4, '2022-04-01', 'New');
INSERT INTO sales (shop_id, departure_date, status_order) VALUES (5, '2022-05-01', 'Used');

--QUERIES DE LA TABLA DE CLIENTES 
INSERT INTO customers (name_customer, direction, postal_code, phone_number, email) VALUES ('John Smith', '456 Elm St', '67890', '5555555555', 'johnsmith@email.com');
INSERT INTO customers (name_customer, direction, postal_code, phone_number, email) VALUES ('Jane Doe', '789 Oak Ave', '09876', '5555555555', 'janedoe@email.com');
INSERT INTO customers (name_customer, direction, postal_code, phone_number, email) VALUES ('Bob Johnson', '321 Pine St', '54321', '5555555555', 'bobjohnson@email.com');
INSERT INTO customers (name_customer, direction, postal_code, phone_number, email) VALUES ('Samantha Williams', '135 Maple Rd', '24680', '5555555555', 'samanthawilliams@email.com');
INSERT INTO customers (name_customer, direction, postal_code, phone_number, email) VALUES ('Michael Brown', '246 Cedar Blvd', '13579', '5555555555', 'michaelbrown@email.com');