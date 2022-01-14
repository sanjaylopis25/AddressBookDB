use address_book;
create table contact_zip(zip_code int not null,city varchar(50),state varchar(50),primary key(zip_code));
insert into contact_zip values(110063,'New Delhi','Delhi');
insert into contact_zip values(110028,'New Delhi','Delhi');
insert into contact_zip values(110084,'New Delhi','Delhi');
insert into contact_zip values(400710,'Navi Mumbai','Mumbai');
select * from contact_zip;
drop table contact_zip;