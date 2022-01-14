use address_book;
create table contact_address(id int not null, address varchar(255),zip_code int,foreign key(id) references contact_details(id),foreign key(zip_code) references contact_zip(zip_code));
insert into contact_address values(1,'Paschim vihar',110063);
insert into contact_address values(2,'Naraina',110028);
insert into contact_address values(3,'Naraina',110028);
insert into contact_address values(4,'Naraina',110028);
insert into contact_address values(5,'Lakshmi nagar',110084);
insert into contact_address values(6,'Lakshmi nagar',110084);
insert into contact_address values(7,'Naraina',110028);
insert into contact_address values(8,'Naraina',110028);
insert into contact_address values(9,'Panvel',400710);

delete from contact_address where id=9;
select * from contact_address;
drop table contact_address;
