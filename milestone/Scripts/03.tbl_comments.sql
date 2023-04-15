-- milestone.tbl_comments definition

CREATE TABLE `tbl_comments` (
  `comments_number` int NOT NULL AUTO_INCREMENT COMMENT '댓글 번호',
  `comments_content` varchar(500) NOT NULL COMMENT '댓글 내용',
  `individual_member_number` int DEFAULT NULL COMMENT '개인 회원 번호',
  `nursery_school_member_number` int DEFAULT NULL COMMENT '보육원 회원 번호',
  `individual_community_number` int DEFAULT NULL COMMENT '개인 게시판 글 번호',
  `nursery_school_community_number` int DEFAULT NULL COMMENT '보육원 게시판 글 번호',
  `comment_date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_number`),
  KEY `FK_tbl_comments_individual_member_number_tbl_individual_member_i` (`individual_member_number`),
  KEY `FK_tbl_comments_nursery_school_member_number_tbl_nursery_school_` (`nursery_school_member_number`),
  KEY `FK_tbl_comments_individual_community_number_tbl_individual_membe` (`individual_community_number`),
  KEY `FK_tbl_comments_nursery_school_community_number_tbl_nursery_scho` (`nursery_school_community_number`),
  CONSTRAINT `FK_tbl_comments_individual_community_number_tbl_individual_membe` FOREIGN KEY (`individual_community_number`) REFERENCES `tbl_individual_member_community` (`individual_community_number`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_tbl_comments_individual_member_number_tbl_individual_member_i` FOREIGN KEY (`individual_member_number`) REFERENCES `tbl_individual_member` (`individual_member_number`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_tbl_comments_nursery_school_community_number_tbl_nursery_scho` FOREIGN KEY (`nursery_school_community_number`) REFERENCES `tbl_nursery_school_member_community` (`nursery_school_community_number`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_tbl_comments_nursery_school_member_number_tbl_nursery_school_` FOREIGN KEY (`nursery_school_member_number`) REFERENCES `tbl_nursery_school_member` (`nursery_school_member_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='댓글';