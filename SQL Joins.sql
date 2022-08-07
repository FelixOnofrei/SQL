/* SQL Joins
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN
5. CROSS JOIN
6. NATURAL JOIN */
 
SHOW DATABASES;

USE customer;

SELECT * FROM student;
SELECT * FROM DEPARTMENT;

INSERT INTO student VALUES (4,'Criss','Manda',56);

#-----------------INNER JOIN------------------#
SELECT fName, lName, age, department.dName FROM student
INNER JOIN department
ON student.std_id=department.std_id;


#-----------------LEFT JOIN------------------# FOCUS IS ON THE LEFT HAND TABLE
SELECT fName, lName, age, department.dName FROM student
LEFT JOIN department
ON student.std_id=department.std_id;

#-----------------RIGHT JOIN------------------# FOCUS IS ON THE RIGHT HAND TABLE
SELECT fName, lName, age, department.dName FROM student
LEFT JOIN department
ON student.std_id=department.std_id;

#---------------FULL OUTER JOIN---------------# COMBINE ALL THE VALUES - BASICALLY THE UNION OF LEFT AND RIGHT
SELECT fName, lName, age, department.dName FROM student
LEFT JOIN department
ON student.std_id=department.std_id

UNION

SELECT fName, lName, age, department.dName FROM student
LEFT JOIN department
ON student.std_id=department.std_id;


#-----------------CROSS JOIN------------------# ALL THE POSIBLE COMBINATIONS OF THE TWO TABLES. NO NEED FOR "ON"
SELECT fName, lName, age, department.dName FROM student
CROSS JOIN department;


#-----------------NATURAL JOIN------------------# 
SELECT fName, lName, age, department.dName FROM student
NATURAL JOIN department;

