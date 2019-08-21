-- Table - Person

--1.
CREATE TABLE person
(
id SERIAL PRIMARY KEY,
name VARCHAR(40),
height INTEGER,
city VARCHAR(40),
favorite_color VARCHAR(40)
);

--2.
INSERT INTO person
(name, favorite_color, city, height, age)
VALUES 
('George', 'red', 'Indianapolis', 180, 22),
('John', 'green', 'New York', 175, 30),
('Larry', 'yellow', 'Salt Lake City', 160, 15),
('Harold', 'orange', 'Phoenix', 186, 25),
('Chris', 'blue', 'Chicago', 165, 38);

--3.
SELECT * 
FROM person
ORDER BY height DESC;

--4.
SELECT * 
FROM person
ORDER BY height ;

--5.
SELECT * 
FROM person
ORDER BY age DESC;

--6.
SELECT * 
FROM person
WHERE age > 20;

--7.
SELECT * 
FROM person
WHERE age = 18;

--8.
SELECT * 
FROM person
WHERE age < 20 OR age > 30;

--9.
SELECT * 
FROM person
WHERE age  != 27;

--10.
SELECT * 
FROM person
WHERE favorite_color != 'red';

--11.
SELECT * 
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

--12.
SELECT * 
FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

--13.
SELECT * 
FROM person
WHERE favorite_color IN ('orange','green','blue');

--14.
SELECT * 
FROM person
WHERE favorite_color IN ('yellow','purple');

-- Table - Orders

--1.
CREATE TABLE orders(
    order_id INTEGER, 
    person_id INTEGER, 
    product_name VARCHAR(100), 
    product_price DECIMAL, 
    quantity  INTEGER
);
--2.
INSERT INTO orders(
order_id, person_id, product_name, product_price, quantity
)
VALUES
(1, 1, 'Milk', 2.65, 2),
(2, 2, 'Cheese',3.20, 1);

--3.
SELECT * FROM orders;

--4.
SELECT SUM(quantity)
FROM orders;

--5.
SELECT SUM(product_price)
FROM orders;

--6.
SELECT SUM(product_price*quantity)
FROM orders
WHERE person_id = 1;

--Table - Artist

--1.

INSERT INTO artist(
   name
)
VALUES
('The Black Keys'),
('The Starlight Mints'),
('Okkerville River');

--2.
SELECT * 
FROM artist
ORDER BY name DESC
LIMIT 10 ;

--3.
SELECT * 
FROM artist
ORDER BY name 
LIMIT 5 ;

--4.
SELECT * 
FROM artist
WHERE name 
LIKE 'Black%';

--5.
SELECT * 
FROM artist
WHERE name 
LIKE '%Black%';

--Table - Employee

--1.
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

--2.
SELECT MAX(birth_date)
FROM employee;

--3.
SELECT MIN(birth_date)
FROM employee;

--4.
SELECT *
FROM employee
WHERE reports_to = 2;

--5.
SELECT count(*)
FROM employee
WHERE city = 'Lethbridge';

--Table - Invoice

--1.
SELECT count(*)
FROM invoice
WHERE billing_country = 'USA';

--2.
SELECT MAX(total)
FROM invoice;

--3.
SELECT MIN(total)
FROM invoice;

--4.
SELECT *
FROM invoice
WHERE total > 5;

--5.
SELECT count(*)
FROM invoice
WHERE total < 5;

--6.
SELECT count(*)
FROM invoice
WHERE billing_state IN ('CA','TX','AZ');

--7.
SELECT avg(total)
FROM invoice;

--8.
SELECT sum(total)
FROM invoice;