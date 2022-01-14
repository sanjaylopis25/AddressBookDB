use address_book;
create table contact_ph_type(type_id int not null,phone_no_type varchar(70),primary key(type_id));
insert into contact_ph_type values(1,'residence');
insert into contact_ph_type values(2,'office');
insert into contact_ph_type values(3,'personal');
select * from contact_ph_type;