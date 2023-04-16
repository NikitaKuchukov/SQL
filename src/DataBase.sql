CREATE
    DATABASE skypro;
\c skypro;
CREATE TABLE employee
(
    id         BIGSERIAL   NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    gender     VARCHAR(6)  NOT NULL,
    age        INT         NOT NULL
);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Anna', 'Kalach', 'Jen', 24),
       ('Evgeniy', 'Brodskiy', 'Muj', 21),
       ('Yliya', 'Poselkova', 'Jen', 32);

SELECT *
FROM employee;

UPDATE employee
SET first_name = 'Igor',
    last_name  = 'Egorov',
    gender     = 'Muj',
    age        = 55
WHERE id = 1;

SELECT *
FROM employee;

DELETE
FROM employee
WHERE id = 2;

SELECT first_name AS Имя, last_name AS Фамилия
FROM employee;

SELECT *
FROM employee
WHERE age < 30
   OR age > 50;

SELECT *
FROM employee
WHERE age
          BETWEEN 30 AND 50;

SELECT *
FROM employee
ORDER BY last_name DESC;

SELECT *
FROM employee
WHERE LENGTH(first_name) > 4;

UPDATE employee
SET first_name='Igor'
WHERE first_name = 'Artem';

UPDATE employee
SET first_name='Irina'
WHERE first_name = 'Yliya';

SELECT first_name AS Имя, SUM(age) AS Суммарный_возраст
FROM employee
GROUP BY Имя;

SELECT first_name, age
FROM employee
WHERE age = (SELECT MIN(age) FROM employee);

SELECT first_name, age
FROM employee
WHERE age IN (SELECT MAX(age) FROM employee GROUP BY first_name HAVING COUNT(first_name) > 1)
ORDER BY age;

