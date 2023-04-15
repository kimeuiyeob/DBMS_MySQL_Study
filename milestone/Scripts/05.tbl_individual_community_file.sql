-- milestone.tbl_individual_community_file definition

CREATE TABLE `tbl_individual_community_file` (
  `individual_community_file_system_name` varchar(500) NOT NULL COMMENT '개인 게시판 파일 시스템 이름',
  `individual_community_file_original_name` varchar(500) NOT NULL COMMENT '개인 게시판 파일 오리지널 이름',
  `individual_community_number` int DEFAULT NULL COMMENT '개인 게시판 글 번호',
  PRIMARY KEY (`individual_community_file_system_name`),
  KEY `FK_tbl_file_individual_community_number_tbl_individual_membe` (`individual_community_number`),
  CONSTRAINT `FK_tbl_file_individual_community_number_tbl_individual_file` FOREIGN KEY (`individual_community_number`) REFERENCES `tbl_individual_member_community` (`individual_community_number`) ON DELETE CASCADE,
  CONSTRAINT `FK_tbl_file_individual_community_number_tbl_individual_membe` FOREIGN KEY (`individual_community_number`) REFERENCES `tbl_individual_member_community` (`individual_community_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='개인 게시판 파일';