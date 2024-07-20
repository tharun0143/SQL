CREATE DATABASE movie ;
USE movie;
CREATE TABLE movie_info2(id int, movie_name varchar(20),release_year int, actor varchar(20),collection bigint, budget bigint );
INSERT INTO movie_info values(1,"Dilbar",2020,"AKSHAY ",200000,50000,20,"MUBAI","HORROR",8787454241,TRUE);
INSERT INTO movie_info values(2,"DDLJ",1998,"SRK",500000,200000,20,"BANKAPURA","comedy",7859548854,False);
INSERT INTO movie_info values(3,"Aashiqui",2000,"Amitabh",800000,89797854,30,"BANGALORE","HORROR",78852412854,True);
INSERT INTO movie_info values(4,"mey vatan",1998,"mangeshkar",500000,2874598456,32,"BANGLA",45778855,True);
INSERT INTO movie_info values(5,"bhoomi2",1998,"SRK",6000000,7004990,60,"Mysore","ODIA",45788963000,False);
INSERT INTO movie_info values(6,"Dilbar2",2023,"AKSHAY ",2000000,1287425845,20,"MUBAI","HORROR",8787454241,TRUE);
INSERT INTO movie_info values(7,"DDLJ2",1990,"SRK",5000000,2000000,20,"BANKAPURA","Comedy",7859548854,False);
INSERT INTO movie_info values(8,"Aashiqui2",2004,"Amitabh",8000000,897978540,30,"BANGALORE","Triller",78852412854,True);
INSERT INTO movie_info values(9,"mey vatan2",1993,"mangeshkar",5000000,28745984560,40,"BANGLA","Fun",45778855,True);
INSERT INTO movie_info values(10,"bhoomi2",1978,"SRK",6000000,7415840,20,"bangalore","ODIA",45788963,False);
truncate movie_info;
select * from movie_info;

ALTER TABLE movie_info ADD COLUMN(mem_no int, area varchar(20), title varchar(20), ph_num bigint, relese Boolean);
ALTER TABLE movie_info RENAME COLUMN mem_no TO members;
ALTER TABLE movie_info RENAME COLUMN ph_num TO phone;
ALTER TABLE movie_info RENAME COLUMN actor TO actor_name;


UPDATE movie_info SET members =20, actor_name="sushanth" WHERE id=7;
UPDATE movie_info SET members =80, actor_name="Alaska" WHERE id=4;
UPDATE movie_info SET members =40, actor_name="Nisha" WHERE id=8;
UPDATE movie_info SET members =90, actor_name="Hemanth" WHERE id=9;
UPDATE movie_info SET members =10, actor_name="Ranjith" WHERE id=2;

DELETE FROM movie_info WHERE actor_name ="alaska";
DELETE FROM movie_info WHERE id = 7;
DELETE FROM movie_info WHERE id= 3;

SELECT * FROM movie_info WHERE id =3 and actor_name = "Ranjith";
SELECT * FROM movie_info WHERE id=2 or members= 20;
SELECT * FROM movie_info WHERE id in(1,6,7,9);
SELECT * FROM movie_info WHERE id not in(1,6,7,9);