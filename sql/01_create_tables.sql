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

