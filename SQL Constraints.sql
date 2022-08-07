/*
SQL constraints are used to specify any rules for the records in a table.
Constraints can be used to limit the type of adata that can go into a table.
It ensures the accracy and reliability of the records in the table, and if
there is any violation between the constraint and the record action, the 
action is aborted. Constaints can be column level or table level/
Column level constaints appluy to a column.
Table level constaints apply to the whole table.


NOT NULL
UNIQUE
PRIMARY KEY
FOREIGN KEY
CHECK
DEFAULT
INDEX
*/

SHOW databases;
#CREATE database john;
USE john;


CREATE TABLE student(
id int NOT NULL,
first_name varchar(20) NOT NULL,
last_lame varchar(20) NOT NULL,
age int
);
DESC student;

ALTER TABLE student MODIFY age INT NOT NULL;


CREATE TABLE person(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
age INT NOT NULL,
UNIQUE(id)
);
DESC person;


INSERT INTO person VALUES(2,'FELIX','2222',23);
SELECT * FROM person;

INSERT INTO person VALUES(1,'2FDSFD','FDSFD', 34);
DELETE FROM person WHERE id=1;

ALTER TABLE person ADD UNIQUE(first_name);

ALTER TABLE person
ADD CONSTRAINT uD_person UNIQUE(first_name, age);
DESC person;

ALTER TABLE person
DROP INDEX uD_person;


## MULTIPLE PRIMARY KEY CONSTRAINT
CREATE TABLE person1(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25),
age INT NOT NULL,
CONSTRAINT pk_person PRIMARY KEY (id, last_name)
);
DESC person1;

ALTER TABLE person1 DROP PRIMARY KEY;
ALTER TABLE person1 ADD PRIMARY KEY(id);

CREATE TABLE products(
id INT NOT NULL auto_increment,
product_name VARCHAR(20),
product_type VARCHAR(20),
price float,
PRIMARY KEY(id)
);
DESC products;

ALTER TABLE products MODIFY price FLOAT NOT NULL,
MODIFY product_name VARCHAR(20) NOT NULL,
MODIFY product_type VARCHAR(20) NOT NULL;

DESC products;
INSERT INTO products(product_name,product_type,price) VALUES
('pizza','food',10),
('hotdog','food',4),
('knife','kitchen',23);

SELECT * FROM products;

SELECT * FROM products
WHERE product_type='food' AND price<10;

# SET PRIMARY KEY
DROP TABLE person;
DESC student;
ALTER TABLE student ADD PRIMARY KEY(id);

DELETE FROM products WHERE id>3;
SELECT * FROM products;
SELECT * FROM student;

ALTER TABLE products 
MODIFY id INT NOT NULL,
DROP primary key;

DESC products;

ALTER TABLE products ADD primary key(product_name);
ALTER TABLE student ADD food VARCHAR(20);

INSERT INTO student(id, first_name, last_lame,age,food) VALUES
(1,'JOHN','DEER',23,'pizza'),
(2,'FEFE','LORS',25,'pizza'),
(3, 'ETSSA', 'TARRT', 36, 'knife');
SELECT * FROM student;
SELECT * FROM products;

## FOREIGN KEY CONSTRAINT 
ALTER TABLE student ADD foreign key(food) references products(product_name);


## CHECK CONSTRAINTS
ALTER TABLE products ADD CONSTRAINT CHECK(price<100);

INSERT INTO products(id,product_name,product_type,price) VALUES
(4,'JUICE','food',12);

SELECT * FROM  products;
DESC products;

ALTER TABLE products ADD CONSTRAINT CHECK(price>0);

INSERT INTO products VALUES
(5,'pasta','bio','0');