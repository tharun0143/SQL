CREATE DATABASE TASK;
use TASK;
CREATE TABLE tasks (
    ID int auto_increment PRIMARY KEY,
    Name varchar(20) NOT NULL,
    address varchar(20) NOT NULL,
    distance bigint CHECK (distance > 0),
    speed int CHECK (speed > 0)
);
INSERT INTO tasks (ID, Name, address, distance, speed) VALUES
(1, 'varun', 'TMK', 200, 20),
(2, 'arun', 'BNG', 3400, 50),
(3, 'shakil', 'BNG', 500, 25),
(4, 'sharan', 'BNG', 100, 70),
(5, 'karan', 'BNG', 220, 120),
(6, 'parun', 'BGM', 200, 20),
(7, 'Bayrun', 'BNG', 3400, 50),
(8, 'akil', 'BNG', 500, 25),
(9, 'hariharan', 'BGM', 100, 70),
(10, 'karan', 'MYS', 220, 120);

SELECT * FROM tasks
WHERE distance BETWEEN 100 AND 500;

SELECT * FROM task
WHERE Name LIKE 'sha%';


SELECT * FROM tasks
ORDER BY speed DESC;

SELECT UPPER(Name) AS UpperName, LOWER(address) AS LowerAddress, CONCAT(Name, ' from ', address) AS FullDetails, LENGTH(Name) AS NameLength
FROM tasks;


CREATE INDEX idx_distance ON task(distance);

SELECT * FROM tasks
WHERE distance > 200;
