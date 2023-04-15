create database board;
use board;

create table tbl_member(
   member_number int unsigned auto_increment primary key,
   member_id varchar(300),
   member_pw varchar(300),
   member_name varchar(300),
   member_age tinyint unsigned,
   member_gender varchar(100),
   member_email varchar(300),
   member_zipcode char(5),
   member_address varchar(500),
   member_address_detail varchar(500)
);

select * from tbl_member;

select * from tbl_member where member_name like '%김의%';


insert into tbl_member
(member_id, member_pw, member_name, member_age, member_gender, member_email, member_zipcode, member_address, member_address_detail)
values('asd', '1234', 'key', 20, '', '', '', '', '');

