-- milestone.tbl_individual_member_community definition

CREATE TABLE `tbl_individual_member_community` (
  `individual_community_number` int NOT NULL AUTO_INCREMENT COMMENT '개인 게시판 글 번호',
  `individual_community_title` varchar(100) NOT NULL COMMENT '개인 게시판 글 제목',
  `individual_community_content` varchar(1000) NOT NULL COMMENT '개인 게시판 글 내용',
  `individual_community_hits` int DEFAULT '0' COMMENT '개인 게시판 조회수',
  `individual_community_like` int DEFAULT '0' COMMENT '개인 게시판 좋아요',
  `individual_community_image` varchar(1000) DEFAULT NULL COMMENT '개인 게시판 이미지',
  `individual_community_date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '개인 게시판 작성일',
  `individual_number` int NOT NULL COMMENT '개인 회원 번호',
  PRIMARY KEY (`individual_community_number`),
  KEY `FK_tbl_individual_member_community_individual_number_tbl_individ` (`individual_number`),
  CONSTRAINT `FK_tbl_individual_member_community_individual_number_tbl_individ` FOREIGN KEY (`individual_number`) REFERENCES `tbl_individual_member` (`individual_member_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='개인 게시판';

SELECT individual_community_number, individual_community_title, individual_community_content, individual_community_hits, individual_community_like, individual_community_image, individual_community_date_created, individual_number
FROM milestone.tbl_individual_member_community;
SELECT individual_community_number, individual_community_title, individual_community_content, individual_community_hits, individual_community_like, individual_community_image, individual_community_date_created, individual_number
FROM tbl_individual_member_community;

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 조니뎁이에요','캐리비안의 해적 보육원에 다녀왔어요
좋더라고요
굿나잇',30,0,NULL,'2022-10-25 00:54:06',10);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 톰크루즈에요','미션임파서블 보육원에 다녀왔어요
헬기타고 갔어요
즐거워요',5,0,NULL,'2022-10-25 00:54:06',9);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 브래드 피트에요','할리우드에 다녀왔어요
영화 촬영 했어요
화이팅',15,0,NULL,CURRENT_TIMESTAMP,8);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 레오나르도 디카프리오에요','셔터아일랜드 보육원에 다녀왔어요
반전이 있었네요
다음에 또봐요',17,0,NULL,CURRENT_TIMESTAMP,7);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 여상혁이에요','집에서 원격으로 보육원에 다녀왔어요
안녕히',8,0,NULL,CURRENT_TIMESTAMP,6);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 황지수에요','서버 보육원에 다녀왔어요
잠못잘거 같아요 떨려요',19,0,NULL,CURRENT_TIMESTAMP,5);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 정서림이에요','소풍 보육원에 다녀왔어요
돗자리에 앉아서 놀았어요 즐거워요',4,0,NULL,CURRENT_TIMESTAMP,4);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 박해준이에요','코끼리 보육원에 다녀왔어요
코끼리 등에 타고 동네 한바퀴 돌았어요',99,0,NULL,CURRENT_TIMESTAMP,3);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 김의엽이에요','빙봉 보육원에 다녀왔어요
빙봉이 우릴 위해 희생했어요 너무 슬퍼요',77,0,NULL,CURRENT_TIMESTAMP,2);

INSERT INTO milestone.tbl_individual_member_community (individual_community_title,individual_community_content,individual_community_hits,individual_community_like,individual_community_image,individual_community_date_created,individual_number) VALUES
	 ('안녕하세요 조니뎁이에요','거북이 보육원에 다녀왔어요 
새끼 거북이들이 빨빨빨 거리면서 다녔어요 기분이 너무 좋아요
다음에 또 갈래요',7,0,NULL,CURRENT_TIMESTAMP,10);