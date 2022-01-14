#UC1
create database address_book;
use address_book;
#UC2
create table add_book1(id int not null ,first_name varchar(20) not null,last_name varchar(30),address varchar(60) ,city varchar(30),state varchar(30),zip int(15) not null,phoneNumber int(20),email varchar(30),primary key(id));
#UC3
insert into add_book1 values(1,'Vivek','Yatri','Paschim vihar','New Delhi','Delhi',110063,0987654321,'vivekyatri@gmail.com');
insert into add_book1 values(2,'Kanchan','jaiswal','Naraina','New Delhi','Delhi',110028,0987654493,'kanchan@gmail.com');
insert into add_book1 values(3,'Priya','jaiswal','Naraina','New Delhi','Delhi',110028,0987554493,'priya@gmail.com');
insert into add_book1 values(4,'Pankaj','jonwal','Naraina','New Delhi','Delhi',110028,0787876743,'jonwalpankaj@gmail.com');
insert into add_book1 values(5,'Shilpi','jaiswal','Lakshmi nagar','New Delhi','Delhi',110084,0987556743,'shilpijaiswal@gmail.com');
insert into add_book1 values(6,'Lakshay','Malhotra','Lakshmi nagar','New Delhi','Delhi',110084,0783556743,'malhotralakshay@gmail.com');
insert into add_book1 values(7,'Hritik','jaiswal','Naraina','New Delhi','Delhi',110028,0987876743,'hrjaiswal@gmail.com');
insert into add_book1 values(8,'Extra','no','Naraina','New Delhi','Delhi',110028,0987876843,'noname@gmail.com');
select * from add_book1;

drop table add_book1;
#UC4
SET SQL_SAFE_UPDATES=0;
update add_book1 set zip=110012 where id=7;
SET SQL_SAFE_UPDATES=1;

#UC5
SET SQL_SAFE_UPDATES=0;
DELETE FROM add_book1 where id=8;
SET SQL_SAFE_UPDATES=1;

#UC6
select city,state from add_book1 where id=2;

#UC7
select count(id),state from add_book1 group by state;

#UC8
select first_name from add_book1 where state='Delhi' order by first_name asc;

#UC9
Alter table add_book1 add column AddressBook_name varchar(100);
Alter table add_book1 add column AddressBook_type varchar(100);

update add_book1 set AddressBook_name='Family_addressBook' where id=1;
update add_book1 set AddressBook_type='Family' where id=1;

update add_book1 set AddressBook_name='Family_addressBook' where id=3;
update add_book1 set AddressBook_type='Family' where id=3;

update add_book1 set AddressBook_name='Family_addressBook' where id=4;
update add_book1 set AddressBook_type='Family' where id=4;

update add_book1 set AddressBook_name='Family_addressBook' where id=7;
update add_book1 set AddressBook_type='Family' where id=7;

update add_book1 set AddressBook_name='Friends_addressBook' where id=4;
update add_book1 set AddressBook_type='Friend' where id=4;

update add_book1 set AddressBook_name='Friends_addressBook' where id=6;
update add_book1 set AddressBook_type='Friend' where id=6;


update add_book1 set AddressBook_name='Profession_addressBook' where id=5;
update add_book1 set AddressBook_type='Profession' where id=5;

update add_book1 set AddressBook_name='Profession_addressBook' where id=8;
update add_book1 set AddressBook_type='Profession' where id=8;

update add_book1 set AddressBook_name='Friends_addressBook' where id=2;
update add_book1 set AddressBook_type='Friend' where id=2;

#UC10
select AddressBook_type,count(AddressBook_name) from add_book1 group by AddressBook_name;

#UC11
insert into add_book1 values(9,'Sanjeev','kumar','Panvel','Navi Mumbai','Mumbai',400710,0987554783,'sanjeev@gmail.com','Family_addressBook','Family');
insert into add_book1 values(10,'Sanjeev','kumar','Panvel','Navi Mumbai','Mumbai',400710,0987554783,'sanjeev@gmail.com','Friend_addressBook','Friend');

select * from add_book1;

#UC12
select address,city,state from contact_address,contact_zip 
where contact_zip.zip_code=110028 and contact_address.id=2;
 
select count(distinct id),state from contact_address,contact_zip 
where contact_address.zip_code=contact_zip.zip_code  group by contact_zip.state;

select distinct contact_details.full_name,contact_zip.state 
from contact_details,contact_zip,contact_address 
where contact_details.id=contact_address.id and contact_address.zip_code=contact_zip.zip_code 
and contact_zip.state ='Delhi' order by full_name asc;

select type.addBook_type,count(name.addBook_name) 
from contact_addBook_type as type,contact_addBook_name as name 
where name.addBook_name=type.addBook_name group by name.addBook_name;

select name.full_name,no.phone_no,type.phone_no_type, at.addBook_name
from contact_details as name,contact_ph_no as no ,contact_ph_type as type, contact_addBook_name as at
where name.id=9 and name.id=at.id and at.id=no.id and no.id=name.id and no.type_id=type.type_id ;





#Extra
alter table add_book1 drop column phone_type;
alter table add_book1 add column phone_type varchar(150) after phoneNumber;
update add_book1 set phone_type='personal' where id=1;
update add_book1 set phone_type='residence' where id=2;
update add_book1 set phone_type='office' where id=3;
update add_book1 set phone_type='personal' where id=4;
update add_book1 set phone_type='residence' where id=5;
update add_book1 set phone_type='office' where id=6;
update add_book1 set phone_type='office' where id=7;
update add_book1 set phone_type='personal' where id=8;
update add_book1 set phone_type='office' where id=9;
update add_book1 set phone_type='residence' where id=10;
