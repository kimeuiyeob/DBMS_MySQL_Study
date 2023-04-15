-- milestone.tbl_notice definition

CREATE TABLE `tbl_notice` (
  `notice_number` int NOT NULL AUTO_INCREMENT COMMENT '공지 번호',
  `notice_classification` varchar(50) DEFAULT NULL COMMENT '공지 분류',
  `notice_title` varchar(100) NOT NULL COMMENT '공지 제목',
  `notice_date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '공지 작성일',
  `notice_content` varchar(1000) NOT NULL COMMENT '공지 내용',
  PRIMARY KEY (`notice_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='공지사항';


SELECT notice_number, notice_classification, notice_title, notice_date_created, notice_content
FROM milestone.tbl_notice;


INSERT INTO milestone.tbl_notice
(notice_classification, notice_title, notice_date_created, notice_content)
VALUES('공지', '[공지] 시스템점검으로 인한 대표번호 운영 일시 중단', CURRENT_TIMESTAMP, '안녕하세요. milestone입니다. 시스템점검으로 인해 대표번호 일시 중단되어 안내드립니다.');

INSERT INTO milestone.tbl_notice
(notice_classification, notice_title, notice_date_created, notice_content)
VALUES('점검', '[공지] 시스템점검으로 인한 페이지 오류 수정 완료', CURRENT_TIMESTAMP, '안녕하세요. milestone입니다. 페이지 이동중 오류의 부분을 해결하여 안내드립니다.');

INSERT INTO milestone.tbl_notice
(notice_classification, notice_title, notice_date_created, notice_content)
VALUES('점검', '[공지] 일시적인 인터넷 느림으로 인해 버그 수정', CURRENT_TIMESTAMP, '안녕하세요. milestone입니다. 갑작스러운 인터넷 속도 저하 버그 해결완료하여 안내드립니다.');

INSERT INTO milestone.tbl_notice
(notice_classification, notice_title, notice_date_created, notice_content)
VALUES('점검', '[공지] 일시적인 인터넷 느림으로 인해 버그 완료', CURRENT_TIMESTAMP, '안녕하세요. milestone입니다. 갑작스러운 인터넷 속도 저하 버그 해결완료하여 안내드립니다.');