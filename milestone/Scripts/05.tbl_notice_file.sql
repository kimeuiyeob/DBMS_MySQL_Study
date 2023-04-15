-- milestone.tbl_notice_file definition

CREATE TABLE `tbl_notice_file` (
  `file_system_name` varchar(700) NOT NULL COMMENT '공지사항 파일 시스템 이름',
  `file_original_name` varchar(700) NOT NULL COMMENT '공지사항 파일 오리지널 이름',
  `notice_number` int DEFAULT NULL COMMENT '공지 번호',
  PRIMARY KEY (`file_system_name`),
  KEY `FK_tbl_file_notice_number_tbl_notice_notice_number` (`notice_number`),
  CONSTRAINT `FK_tbl_file_notice_number_tbl_notice_notice_number` FOREIGN KEY (`notice_number`) REFERENCES `tbl_notice` (`notice_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

