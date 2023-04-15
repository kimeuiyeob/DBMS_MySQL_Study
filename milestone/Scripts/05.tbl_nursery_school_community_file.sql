-- milestone.tbl_nursery_school_community_file definition

CREATE TABLE `tbl_nursery_school_community_file` (
  `nursery_school_community_file_system_name` varchar(700) NOT NULL COMMENT '보육원 게시판 파일 시스템 이름',
  `nursery_school_community_file_original_name` varchar(700) NOT NULL COMMENT '보육원 게시판 파일 오리지널 이름',
  `nursery_school_community_number` int DEFAULT NULL COMMENT '보육원 게시판 글 번호',
  PRIMARY KEY (`nursery_school_community_file_system_name`),
  KEY `FK_tbl_file_nursery_school_community_number_tbl_nursery_scho` (`nursery_school_community_number`),
  CONSTRAINT `FK_tbl_file_nursery_school_community_number_tbl_nursery` FOREIGN KEY (`nursery_school_community_number`) REFERENCES `tbl_nursery_school_member_community` (`nursery_school_community_number`) ON DELETE CASCADE,
  CONSTRAINT `FK_tbl_file_nursery_school_community_number_tbl_nursery_scho` FOREIGN KEY (`nursery_school_community_number`) REFERENCES `tbl_nursery_school_member_community` (`nursery_school_community_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;