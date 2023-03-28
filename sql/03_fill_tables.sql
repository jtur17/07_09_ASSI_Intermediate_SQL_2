
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