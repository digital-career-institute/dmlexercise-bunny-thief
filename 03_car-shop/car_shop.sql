-- Car shop

DROP DATABASE  exercise_car_shop;
CREATE DATABASE exercise_car_shop;
use exercise_car_shop;

CREATE TABLE cars(
	car_id	INT PRIMARY KEY,
    make 	VARCHAR(50),
    model 	VARCHAR(50),
    year	INT,
    price	DECIMAL(7, 2)
);

DESCRIBE cars;

INSERT INTO cars(car_id, make, model, year, price)
VALUES (1, 'Toyota', 'Camry', 2022, 25000.00),
    (2, 'Honda', 'Accord', 2021, 27000.50),
    (3, 'Ford', 'Mustang', 2023, 35000.75),
    (4, 'Chevrolet', 'Equinox', 2022, 30000.25),
    (5, 'Nissan', 'Altima', 2023, 28000.90),
    (6, 'Tesla', 'Model 3', 2022, 48000.00),
    (7, 'BMW', 'X5', 2023, 62000.50),
    (8, 'Mercedes-Benz', 'C-Class', 2022, 55000.75),
    (9, 'Audi', 'Q7', 2023, 59000.25),
    (10, 'Lexus', 'RX', 2021, 48000.90);

SELECT * FROM cars;

UPDATE cars SET price = 38000.00 WHERE model = 'Mustang';

SELECT * FROM cars WHERE model = 'Mustang';

UPDATE cars SET price = price * 1.05 WHERE year = 2022;

SELECT * FROM cars;

DELETE FROM cars WHERE car_id = 3;
SELECT * FROM cars;

DELETE FROM cars WHERE price < 26000.00;
SELECT * FROM cars;

UPDATE cars SET price = 28000.00 WHERE make = 'Honda';
SELECT * FROM cars;

DELETE FROM cars WHERE year = 2021;
SELECT * FROM cars;