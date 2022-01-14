use address_book;
create table contact_details(id int not null,first_name varchar(100),last_name varchar(100),full_name varchar(100),email varchar(1000),primary key(id));
#composite key
SET SQL_SAFE_UPDATES=0;
update contact_details set full_name=concat(first_name,last_name);
SET SQL_SAFE_UPDATES=1;

drop table contact_details;
select * from contact_details;

insert into contact_details(id,first_name,last_name,email)values (1,'Vivek','Yatri','vivek@gmail.com');
insert into contact_details(id,first_name,last_name,email)values (2,'Kanchan','jaiswal','kanchan@gmail.com');
insert into contact_details(id,first_name,last_name,email)values (3,'Priya','jaiswal','priyak@gmail.com');
insert into contact_details(id,first_name,last_name,email)values (4,'Pankaj','jonwal','jonwalpankaj@gmail.com');
insert into contact_details(id,first_name,last_name,email)values (5,'Shilpi','jaiswal','shilpijaiswal@gmail.com');
insert into contact_details(id,first_name,last_name,email)values (6,'Lakshay','Malhotra','malhotralakshay@gmail.com');
insert into contact_details(id,first_name,last_name,email)values (7,'Hritik','jaiswal','hrjaiswal@gmail.com');
insert into contact_details(id,first_name,last_name,email)values (8,'Extra','no','noname@gmail.com');
insert into contact_details(id,first_name,last_name,email)values (9,'Sanjeev','kumar','sanjeev@gmail.com');



update contact_details set full_name=concat(first_name,last_name) where id between 2 and 9;
