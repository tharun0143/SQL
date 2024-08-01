CREATE DATABASE TASK;
use TASK;
CREATE TABLE dailytasks (
    ID int auto_increment PRIMARY KEY,
    Name varchar(20) NOT NULL,
    address varchar(20) NOT NULL,
    howfar bigint CHECK (howfar > 0),
    speed int CHECK (speed > 0)
);
INSERT INTO dailytasks (ID, Name, address, howfar , speed) VALUES
(1, 'varun', 'TMK45677', 1200, 20),
(2, 'arun', 'BNG56789', 3400, 50),
(3, 'shakil', 'BNGyuio', 3500, 25),
(4, 'sharan', 'BNG2545655', 5100, 70),
(5, 'karan', 'BNG789945', 2270, 120),
(6, 'parun', 'BGM44455', 8200, 20),
(7, 'Bayrun', 'BNG7898', 83400, 50),
(8, 'akil', 'BNGio00', 9500, 25),
(9, 'hariharan', 'BGM7890', 9100, 70),
(10, 'karan', 'MYS778899', 2920, 120);

SELECT * FROM dailytasks
WHERE howfar BETWEEN 100 AND 500;

SELECT * FROM dailytasks
WHERE Name LIKE 'sha%';


SELECT * FROM dailytasks
ORDER BY speed DESC;

SELECT UPPER(Name) AS UpperName, LOWER(address) AS LowerAddress, CONCAT(Name, ' from ', address) AS FullDetails, LENGTH(Name) AS NameLength
FROM task;


CREATE INDEX index_distance ON dailytasks(howfar);

SELECT * FROM dailytasks
WHERE howfar > 200;
