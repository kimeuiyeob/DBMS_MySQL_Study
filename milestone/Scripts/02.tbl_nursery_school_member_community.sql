-- milestone.tbl_nursery_school_member_community definition

CREATE TABLE `tbl_nursery_school_member_community` (
  `nursery_school_community_number` int NOT NULL AUTO_INCREMENT COMMENT '보육원 게시판 글 번호',
  `nursery_school_community_title` varchar(100) NOT NULL COMMENT '보육원 게시판 글 제목',
  `nursery_school_community_content` varchar(1000) NOT NULL COMMENT '보육원 게시판 글 내용',
  `nursery_school_community_hits` int DEFAULT '0' COMMENT '보육원 게시판 조회수',
  `nursery_school_community_like` int DEFAULT '0' COMMENT '보육원 게시판 좋아요',
  `nursery_school_community_image` varchar(1000) DEFAULT NULL COMMENT '보육원 게시판 이미지',
  `nursery_school_community_date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '보육원 게시판 작성일',
  `nursery_school_member_number` int NOT NULL COMMENT '보육원 회원 번호',
  PRIMARY KEY (`nursery_school_community_number`),
  KEY `FK_tbl_nursery_school_member_community_nursery_school_member_num` (`nursery_school_member_number`),
  CONSTRAINT `FK_tbl_nursery_school_member_community_nursery_school_member_num` FOREIGN KEY (`nursery_school_member_number`) REFERENCES `tbl_nursery_school_member` (`nursery_school_member_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='보육원 게시판';

SELECT nursery_school_community_number, nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number
FROM milestone.tbl_nursery_school_member_community;


/* 보육원 커뮤니티 */

INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('저희 보육원은..', '아이들이 즐겁게 놀 수 있어요', 7, 0, '', CURRENT_TIMESTAMP, 1);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('우리는', '아이들의 행복을 응원해요', 7, 0, '', CURRENT_TIMESTAMP, 2);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('요즘', '많이 힘이 드네요', 0, 0, '', CURRENT_TIMESTAMP, 3);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('날이 추워졌어요', '따뜻하게 입고 다니세요.. 날씨가 너무 추워요', 0, 0, '', CURRENT_TIMESTAMP, 4);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('조금만 힘내세요', '거의 다왔어요 5', 0, 0, '', CURRENT_TIMESTAMP, 5);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('제목 뭘로 할까요?', '소재가 고갈되고 있어요', 0, 0, '', CURRENT_TIMESTAMP, 6);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('옆 보육원은..', '항상 시끌벅적 하더라구요. 요즘 무슨 일 있는건가요?', 0, 0, '', CURRENT_TIMESTAMP, 7);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('여러분', '이쯤에서 마무리할게요', 0, 0, '', CURRENT_TIMESTAMP, 8);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('소통을 중시하는', '마일스톤 괜찮네요?', 7, 0, '', CURRENT_TIMESTAMP, 9);
INSERT INTO milestone.tbl_nursery_school_member_community
(nursery_school_community_title, nursery_school_community_content, nursery_school_community_hits, nursery_school_community_like, nursery_school_community_image, nursery_school_community_date_created, nursery_school_member_number)
VALUES('커뮤니티 적극 이용해볼게요', '재밌을것같아요!! ㅎㅎ', 7, 0, '', CURRENT_TIMESTAMP, 10);