use special;

create table tbl_room (
	room_number int unsigned auto_increment primary key,
	room_computer varchar(200),
	room_keyboard varchar(200),
	room_notebook varchar(200)
	);	
	
select * from tbl_room;