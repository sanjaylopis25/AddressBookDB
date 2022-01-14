use address_book;
create table contact_addBook_name(id int not null,addBook_name varchar(100),foreign key(id) references contact_details(id),foreign key(addBook_name) references contact_addBook_type(addBook_name));
select * from contact_addBook_name;
insert into contact_addBook_name values(1,'Family_addressBook');
insert into contact_addBook_name values(2,'Friends_addressBook');
insert into contact_addBook_name values(3,'Family_addressBook');
insert into contact_addBook_name values(4,'Friends_addressBook');
insert into contact_addBook_name values(5,'Profession_addressBook');
insert into contact_addBook_name values(6,'Friends_addressBook');
insert into contact_addBook_name values(7,'Family_addressBook');
insert into contact_addBook_name values(8,'Profession_addressBook');
insert into contact_addBook_name values(9,'Friends_addressBook');
insert into contact_addBook_name values(9,'Family_addressBook');

drop table contact_addBook_name;