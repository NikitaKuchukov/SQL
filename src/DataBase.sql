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
    age        = 28
WHERE id = 1;

SELECT *
FROM employee;

DELETE
FROM employee
WHERE id = 2;
