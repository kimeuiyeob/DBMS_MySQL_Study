
-- milestone.tbl_individual_member definition

CREATE TABLE `tbl_individual_member` (
  `individual_member_number` int NOT NULL AUTO_INCREMENT COMMENT '개인 회원 번호',
  `individual_member_name` varchar(50) NOT NULL COMMENT '개인 회원 이름',
  `nickname` varchar(50) NOT NULL COMMENT '닉네임',
  `individual_member_phone_number` varchar(100) NOT NULL COMMENT '개인 회원 전화번호',
  `individual_member_id` varchar(50) NOT NULL COMMENT '개인 회원 아이디',
  `individual_member_password` varchar(50) NOT NULL COMMENT '개인 회원 비밀번호',
  `individual_member_email` varchar(100) NOT NULL COMMENT '개인 회원 이메일',
  `individual_member_address` varchar(100) NOT NULL COMMENT '개인 회원 주소',
  `individual_member_detailed_address` varchar(100) NOT NULL COMMENT '개인 회원 상세 주소',
  `individual_member_profile_image` varchar(1000) DEFAULT NULL COMMENT '개인 회원 프로필 이미지',
  `number_of_donations` int DEFAULT '0' COMMENT '기부 횟수',
  `individual_member_join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '개인 회원 가입일',
  `individual_member_recent_logins` datetime DEFAULT NULL COMMENT '개인 회원 최근 로그인',
  `zip_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`individual_member_number`),
  UNIQUE KEY `UQ_tbl_individual_member_1` (`nickname`,`individual_member_phone_number`,`individual_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='개인회원';

SELECT individual_member_number, individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code
FROM milestone.tbl_individual_member;

INSERT INTO milestone.tbl_individual_member (individual_member_name,nickname,individual_member_phone_number,individual_member_id,individual_member_password,individual_member_email,individual_member_address,individual_member_detailed_address,individual_member_profile_image,number_of_donations,individual_member_join_date,individual_member_recent_logins,zip_code) VALUES
	 ('개발자상팔자','milestone','01012341234','admin','QWExMjM0NTY3ODkh','cyon8254@gmail.com','경기 성남시 중원구 둔촌대로 300','1009동 1404호',NULL,0,'2022-10-24 22:57:16',NULL,'13405');

INSERT INTO milestone.tbl_individual_member (individual_member_name,nickname,individual_member_phone_number,individual_member_id,individual_member_password,individual_member_email,individual_member_address,individual_member_detailed_address,individual_member_profile_image,number_of_donations,individual_member_join_date,individual_member_recent_logins,zip_code) VALUES
	 ('김의엽','teamleader','01011111111','rladmlduq','QWExMjM0NTY3ODkh','rladmlduq@gmail.com','서울특별시 송파구 아파트','105동 101호',NULL,0,'2022-10-24 22:57:16',NULL,'12345');
	
INSERT INTO milestone.tbl_individual_member
(individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code)
VALUES('박해준', 'AxlRose', '01022222222', 'qkrgowns', 'QWExMjM0NTY3ODkh', 'qkrgowns@gmail.com', '경기 성남시 중원구 둔촌대로 300', '1005동 101호', NULL, 0, CURRENT_TIMESTAMP, NULL, '23456');

INSERT INTO milestone.tbl_individual_member
(individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code)
VALUES('정서림', 'jsr', '01033333333', 'wjdtjfla', 'QWExMjM0NTY3ODkh', 'wjdtjfla@gmail.com', '서울특별시 송파구', '106동 103호', NULL, 0, CURRENT_TIMESTAMP, NULL, '34567');

INSERT INTO milestone.tbl_individual_member
(individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code)
VALUES('황지수', 'hjs', '01044444444', 'ghkdwltn', 'QWExMjM0NTY3ODkh', 'ghkdwltn@gmail.com', '서울특별시 송파구', '107동 103호', NULL, 0, CURRENT_TIMESTAMP, NULL, '45678');

INSERT INTO milestone.tbl_individual_member
(individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code)
VALUES('여상혁', 'ysh', '01055555555', 'dutkdgur', 'QWExMjM0NTY3ODkh', 'dutkdgur@gmail.com', '서울특별시 송파구', '108동 103호', NULL, 0, CURRENT_TIMESTAMP, NULL, '56789');

INSERT INTO milestone.tbl_individual_member
(individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code)
VALUES('레오나르도 디카프리오', 'Leonardo DiCaprio', '01066666666', 'elzkvmfldh', 'QWExMjM0NTY3ODkh', 'elzkvmfldh@gmail.com', '서울특별시 송파구', '109동 103호', NULL, 0, CURRENT_TIMESTAMP, NULL, '67890');

INSERT INTO milestone.tbl_individual_member
(individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code)
VALUES('브래드피트', 'Brad Pitt', '01077777777', 'qmfoemvlxm', 'QWExMjM0NTY3ODkh', 'qmfoemvlxm@gmail.com', '서울특별시 송파구', '110동 103호', NULL, 0, CURRENT_TIMESTAMP, NULL, '78901');

INSERT INTO milestone.tbl_individual_member
(individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code)
VALUES('톰크루즈', 'Tom Cruise', '01088888888', 'xhazmfnwm', 'QWExMjM0NTY3ODkh', 'xhazmfnwm@gmail.com', '서울특별시 송파구', '111동 103호', NULL, 0, CURRENT_TIMESTAMP, NULL, '89012');

INSERT INTO milestone.tbl_individual_member
(individual_member_name, nickname, individual_member_phone_number, individual_member_id, individual_member_password, individual_member_email, individual_member_address, individual_member_detailed_address, individual_member_profile_image, number_of_donations, individual_member_join_date, individual_member_recent_logins, zip_code)
VALUES('조니뎁', 'Johnny Depp', '01099999999', 'whslepq', 'QWExMjM0NTY3ODkh', 'whslepq@gmail.com', '서울특별시 송파구', '112동 103호', NULL, 0, CURRENT_TIMESTAMP, NULL, '90123');

select * from tbl_individual_member;