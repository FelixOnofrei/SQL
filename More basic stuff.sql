/*
CUSTOM TABLE INSERT
NULL VALUES
UPDATE
DELETE
ALTER
ADD/DROP/MODIFY COLUMN
*/

SHOW DATABASES;
CREATE DATABASE customer;
USE customer;
#Create custom table
CREATE TABLE customer_info(
id integer auto_increment,
fist_name varchar(20),
last_name varchar(20),
salary integer,
primary key(id)
);

SHOW TABLES;
SELECT * FROM customer_info;

INSERT INTO customer_info(fist_name, last_name, salary)
VALUES
('Felix','Onofrei', 1000),
('John','Remed', 1000),
('Ruth','Peleme', 1000),
('Suzi','Puzni', 1000),
('Roly','Pandas', NULL);

SELECT * FROM customer_info;


SELECT * FROM customer_info WHERE salary IS NULL;

#SQL UPDATE STATEMENT - TO REPLACE THA NAN VALUES
UPDATE customer_info set salary=50000 where id=5;

#SQL DELETE STATEMENT
DELETE FROM customer_info WHERE id=1;

#SQL ALTER TABLE 
##ADD COLUMN IN EXISTING TABLE
ALTER TABLE customer_info ADD age INTEGER;
SELECT * FROM customer_info;
ALTER TABLE customer_info ADD dob DATE;

#ALTER TABLE MODIFY COLUMN
ALTER TABLE customer_info MODIFY dob YEAR;

DESC customer_info;

#ALTER TABLE TO DROP COLUMN
ALTER TABLE customer_info DROP COLUMN age;
SELECT * FROM customer_info;
