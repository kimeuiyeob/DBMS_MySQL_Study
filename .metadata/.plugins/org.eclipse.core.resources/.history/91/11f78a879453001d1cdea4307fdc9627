-- milestone.tbl_banners_file definition

CREATE TABLE `tbl_banners_file` (
  `banners_file_system_name` varchar(700) NOT NULL COMMENT '배너 파일 시스템 이름',
  `banners_file_original_name` varchar(700) NOT NULL COMMENT '배너 파일 오리지널 이름',
  `banners_number` int DEFAULT NULL COMMENT '배너 번호',
  PRIMARY KEY (`banners_file_system_name`),
  KEY `FK_tbl_file_banners_number_tbl_banners_banners_number` (`banners_number`),
  CONSTRAINT `FK_tbl_file_banners_number_tbl_banners_banners_number` FOREIGN KEY (`banners_number`) REFERENCES `tbl_banners` (`banners_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;