create database jsp;
use jsp;

create table tbl_guest(
	guest_number int unsigned auto_increment primary key,
	guest_name varchar(1000),
	guest_birth date
);

select * from tbl_guest;

insert into tbl_guest(guest_name,guest_birth)
values('김인영','1994-04-27');

create table tbl_user(
   user_number int unsigned auto_increment primary key,
   user_id varchar(500)
);

select * from tbl_user;

insert into tbl_user (user_id)
values('hds1234');