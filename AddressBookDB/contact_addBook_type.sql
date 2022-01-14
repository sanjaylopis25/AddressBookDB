use address_book;
create table contact_addBook_type(addBook_name varchar(100),addBook_type varchar(50),primary key(addBook_name));
insert into contact_addBook_type values ('Friends_addressBook','Friend');
insert into contact_addBook_type values ('Family_addressBook','Family');
insert into contact_addBook_type values ('Profession_addressBook','Profession');
select * from contact_addBook_type;
drop table contact_addBook_type;