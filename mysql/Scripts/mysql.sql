create database test;

use test;

create table tbl_guest(
	guestNumber int unsigned auto_increment primary key,
	guestId varchar(1000),
	guestPassword varchar(1000),
	guestAge tinyint unsigned
);

select * from tbl_guest;

alter table tbl_guest add column(birth date);

insert into tbl_guest(guestId, guestPassword, guestAge, birth)
values('hds', '1234', 20, '2000-12-04');

/*암호화*/
insert into tbl_guest(guestId, guestPassword, guestAge, birth)
values('hgd', hex(aes_encrypt('4444', 'abc')), 25, '2008-12-04');

/*복호화*/
select guestId, aes_decrypt(unhex(guestPassword), 'abc') from tbl_guest;

/*현재 시퀀스 가져오기*/
select `AUTO_INCREMENT` from information_schema.TABLES
where TABLE_SCHEMA = 'test' and TABLE_NAME = 'tbl_guest';

/*문자열 합치기*/
select concat(guestId, '의 나이는 ', guestAge, '살') as 자기소개 from tbl_guest;

/*현재 날짜 : now()*/
select now() from dual;

/*날짜를 string으로 변경 : date_format(시간, '형식')*/
select date_format(now(), '%Y년 %m월 %d일 %H:%i:%s') from dual;

/*NULL일 경우 원하는 값으로 대체 : ifnull(컬럼명, 'null일 경우 값')*/
alter table tbl_guest change birth guestBirth date;
select * from tbl_guest;

update tbl_guest
set guestBirth = null
where guestNumber = 2;

select guestNumber, guestId, guestPassword, guestAge, ifnull(guestBirth, '미정') guestBirth from tbl_guest ;

/*
 * guest 데이터베이스(스키마) 생성
 * tbl_member 테이블 생성
 * 회원번호(auto_increment, PK), 이름, 생일 컬럼 추가
 * 
 * */
create database guest;
use guest;

create table tbl_member(
	memberNumber int unsigned auto_increment primary key,
	memberName varchar(1000),
	memberBirth date
	/*constraint pk_member primary key(memberNumber)*/
);

drop table tbl_member;

select * from tbl_member;

INSERT INTO tbl_member
(memberName, memberBirth)
VALUES('홍길동', '2007-12-04');

/*JDBC*/
drop database test;
drop database guest;
drop database customer;

/*회원 테이블
 * 
 * 회원번호
 * 아이디
 * 비밀번호
 * 이름
 * 나이
 * 핸드폰번호
 * 상태
 * 
 * */
create database customer;
use customer;

create table tbl_user(
	userNumber int unsigned auto_increment primary key,
	userId varchar(500) unique,
	userPassword varchar(500),
	userName varchar(500),
	userAge tinyint unsigned,
	userPhoneNumber varchar(500),
	userStatus char(2) default 0,
	userBirth date
);

alter table tbl_user drop constraint userPhoneNumber;

alter table tbl_user change userStatus userStatus char(2);

select * from tbl_user;

alter table tbl_user add userBirth date;


INSERT INTO tbl_user
(userId, userPassword, userName, userAge, userPhoneNumber, userBirth)
VALUES('ggd', '1234', '이순신', 20, '01012341234', '2000-12-05');












