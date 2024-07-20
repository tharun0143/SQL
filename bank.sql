CREATE DATABASE bank;
USE bank;
CREATE TABLE bank_info(id int, bank_name varchar(20),release_year int, founder varchar(20),collection bigint, budget bigint );
INSERT INTO bank_info values(1,"SBI",2020,"AKSHAY ",200000,50000,20,"MUBAI","HORROR",8787454241,TRUE);
INSERT INTO bank_info values(2,"SBI",1998,"SRK",500000,200000,20,"BANKAPURA","comedy",7859548854,False);
INSERT INTO bank_info values(3,"CANARA",2000,"Amitabh",800000,89797854,30,"BANGALORE","HORROR",78852412854,True);
INSERT INTO bank_info values(4,"AXIS",1998,"mangeshkar",500000,2874598456,32,"BANGLA",45778855,True);
INSERT INTO bank_info values(5,"ICICI",1998,"SRK",6000000,7004990,60,"Mysore","ODIA",45788963000,False);
INSERT INTO bank_info values(6,"HDFC",2023,"AKSHAY ",2000000,1287425845,20,"MUBAI","HORROR",8787454241,TRUE);
INSERT INTO bank_info values(7,"IDFC",1990,"SRK",5000000,2000000,20,"BANKAPURA","Comedy",7859548854,False);
INSERT INTO bank_info values(8,"SBI",2004,"Amitabh",8000000,897978540,30,"BANGALORE","Triller",78852412854,True);
INSERT INTO bank_info values(9,"KARNATAKA",1993,"mangeshkar",5000000,28745984560,40,"BANGLA","Fun",45778855,True);
INSERT INTO bank_info values(10,"DADDYGo",1978,"SRK",6000000,7415840,20,"bangalore","ODIA",45788963,False);
truncate bank_info;
select * from bank_info;

ALTER TABLE bank_info ADD COLUMN(mem_no int, area varchar(20), title varchar(20), ph_num bigint, relese Boolean);
ALTER TABLE bank_info RENAME COLUMN mem_no TO members;
ALTER TABLE bank_info RENAME COLUMN ph_num TO phone;
ALTER TABLE bank_info RENAME COLUMN founder TO founder_name;


UPDATE bank_info SET members =20, founder_name="sushanth" WHERE id=7;
UPDATE bank_info SET members =80, founder_name="Alaska" WHERE id=4;
UPDATE bank_info SET members =40, founder_name="Nisha" WHERE id=8;
UPDATE bank_info SET members =90, founder_name="Hemanth" WHERE id=9;
UPDATE bank_info SET members =10, founder_name="Ranjith" WHERE id=2;

DELETE FROM bank_info WHERE founder_name ="alaska";
DELETE FROM bank_info WHERE id = 7;
DELETE FROM bank_info WHERE id= 3;

SELECT * FROM bank_info WHERE id =3 and founder_name = "Ranjith";
SELECT * FROM bank_info WHERE id=2 or members= 20;
SELECT * FROM bank_info WHERE id in(1,6,7,9);
SELECT * FROM bank_info WHERE id not in(1,6,7,9);