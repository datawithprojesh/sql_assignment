## Problem - 1 ##
# create database AItools
create database AItools;
use AItools;

# create the table 
create table technology(
id int,
tools varchar(30));

# insert data in your table
Insert into technology (id, tools) values
(1,'DS'),
(1,'Tableau'),
(1,'SQL'),
(2,'R'),
(2,'PowerBI'),
(1,'python');
select * from technology;

# list the IDs which have the following tools DS, Tableau, SQL, python
select id from technology
where tools='DS' or tools='Tableau' or tools='SQL' or tools='python';


## Problem - 2 ##
# creat database
create database ecomwebsite;
use ecomwebsite;

# create product table
create table prod_info(
prod_id int,
product varchar(30),
primary key(prod_id)
);

# insert data into product table
insert into prod_info (prod_id, product) values
(1001,'Blog'),
(1002,'Youtube'),
(1003,'Education');
select * from prod_info;

# create product likes table
create table prod_likes(
user_id int,
prod_id int,
liked_date date,
primary key(user_id));

# insert data into product likes table
insert into prod_likes (user_id, prod_id, liked_date) values
(1,1001,'2023/08/19'),
(2,1003,'2023/08/18');
select * from prod_likes;

# show prod_ids that has zero likes (using subqueries)
select prod_id from prod_info
where prod_id not in (select prod_id from prod_likes);