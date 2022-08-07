/*
CREATE DB
DROP DB
CREATE TABLE
INSERT INTO TABLE
DROP TABLE
*/

show databases;
use sakila;
show tables;

select * from actor;

#Now we will create our own db

create database customers;

#We will create a table


use customers;
show tables;
create table customer_info(id integer, first_name varchar(10), last_name varchar(10));
select * from customer_info;

insert into customer_info(id, first_name, last_name) values (1, 'Felix', 'Onofrei');

drop table customer_info;
show databases;

drop database customers;

