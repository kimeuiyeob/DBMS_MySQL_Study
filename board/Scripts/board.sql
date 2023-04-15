use board;

create table tbl_board(
   board_number int unsigned auto_increment primary key,
   board_title varchar(500),
   board_content varchar(1000),
   board_date datetime default now(),
   board_read_count int unsigned default 0,
   member_number int unsigned,
   constraint fk_board foreign key(member_number) references tbl_member(member_number)
);

select * from tbl_board
order by board_number desc
limit 0,10;

insert into tbl_board
(board_title, board_content, member_number)
values('asdsad','qweqwe',1);


insert into tbl_board
(board_title, board_content, member_number)
(select board_title, board_content, member_number from tbl_board);