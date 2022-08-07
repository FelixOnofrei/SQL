/* SQL Views
Views is a virtual table based on the result set of an SQL Query.*/

SHOW DATABASES;
SHOW TABLES FROM customer;
USE customer;

SHOW TABLES;
SELECT * FROM customer_info;

ALTER TABLE customer_info DROP COLUMN id;
ALTER TABLE customer_info ADD id INT auto_increment PRIMARY KEY;

DESC customer_info;
SELECT * FROM customer_info;

DROP TABLE customer_info;
SHOW TABLES;

CREATE TABLE student(
id int auto_increment primary key,
fName varchar(30),
lName varchar(30),
age int
);

ALTER TABLE student RENAME COLUMN id TO std_id;
insert into student values
(1,'felix','onofrei',25),
(2,'josh','versh',26),
(3, 'Rema', 'Candle', 34);

SELECT * FROM student;
DROP TABLE department;
CREATE TABLE department(
std_id INT auto_increment,
dName VARCHAR(20) NOT NULL,
FOREIGN KEY(std_id) REFERENCES student(std_id)
);

DESC department;

INSERT INTO department VALUES 
(1,'statistics'),
(2,'ml'),
(3, 'ds');

UPDATE department SET dName='ml' WHERE std_id=3;

SELECT * FROM department;
SELECT * FROM student;
 

# View creation
CREATE VIEW student_info AS
SELECT fName, lName, age FROM student INNER JOIN department
USING (std_id);

SELECT * FROM student_info;

DROP VIEW student_info;