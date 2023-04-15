create table tbl_file(
	file_system_name varchar(500) primary key,
	file_original_name varchar(500) not null, /*도메인 무결성*/
	board_number int unsigned,
	constraint fk_file foreign key(board_number)
	references tbl_board(board_number) on delete cascade
);

select * from tbl_file;

drop table tbl_file;