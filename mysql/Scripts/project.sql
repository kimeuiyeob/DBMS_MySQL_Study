create database project;

use project;

create table tbl_recommand(
	campAddress varchar(300),
	campingName  varchar(150),
	campType varchar(150),
	environment varchar(150),
	inputCount int
);

select * from tbl_recommand;

drop table tbl_recommand;