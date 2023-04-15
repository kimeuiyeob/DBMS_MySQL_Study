-- milestone.tbl_banners definition

CREATE TABLE `tbl_banners` (
  `banners_number` int NOT NULL AUTO_INCREMENT COMMENT '배너 번호',
  `banners_registration_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '배너 등록일',
  `banners_image` varchar(1000) DEFAULT NULL COMMENT '배너 이미지',
  `banners_url` varchar(1000) DEFAULT NULL COMMENT '배너 URL',
  `notice_number` int DEFAULT NULL COMMENT '공지 번호',
  `banners_title` varchar(1000) DEFAULT NULL,
  `banners_content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`banners_number`),
  KEY `FK_tbl_banners_notice_number_tbl_notice_notice_number` (`notice_number`),
  CONSTRAINT `FK_tbl_banners_notice_number_tbl_notice_notice_number` FOREIGN KEY (`notice_number`) REFERENCES `tbl_notice` (`notice_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='배너';

SELECT banners_number, banners_registration_date, banners_image, banners_url, notice_number, banners_title, banners_content
FROM milestone.tbl_banners;


INSERT INTO tbl_banners
(banners_registration_date, banners_image, notice_number, banners_title, banners_content)
VALUES(CURRENT_TIMESTAMP, 'https://www.hschild.or.kr/new/data/historys/ofile024$2_1602474992.jpg', null, '혜명보육원', '따뜻한 가정을 지향하는 혜명보육원 입니다.');

INSERT INTO tbl_banners
(banners_registration_date, banners_image, notice_number, banners_title, banners_content)
VALUES(CURRENT_TIMESTAMP, 'https://www.ganghwa.go.kr/images/bbs/report/2016/ganghwayuchiwon_kkotnureumi_cheheomhakseup_1.jpg',null, '의엽보육원', '의엽 보육원은 사랑이 가득한 곳입니다.');

INSERT INTO tbl_banners
(banners_registration_date, banners_image, notice_number, banners_title, banners_content)
VALUES(CURRENT_TIMESTAMP, 'https://t1.daumcdn.net/cfile/tistory/995F5C4D5A3CA7290E', null, '지수보육원', '아이들의 웃음을 보며 힘을 얻는 지수보육원입니다.');

INSERT INTO tbl_banners
(banners_registration_date, banners_image, notice_number, banners_title, banners_content)
VALUES(CURRENT_TIMESTAMP, 'https://www.busan.go.kr/comm/getImage?srvcId=BBSTY3&amp;upperNo=1478622&amp;fileTy=ATTACH&amp;fileNo=3', null, '해준보육원', '사랑과 열정으로 보살피는 해준보육원입니다.');

INSERT INTO tbl_banners
(banners_registration_date, banners_image, notice_number, banners_title, banners_content)
VALUES(CURRENT_TIMESTAMP, 'https://www.dwbnews.kr/news/photo/202205/20409_24131_3031.jpg',null, '서림보육원', '따뜻한 마음과 사랑으로 항상 보살피겠습니다.');

INSERT INTO tbl_banners
(banners_registration_date, banners_image, notice_number, banners_title, banners_content)
VALUES(CURRENT_TIMESTAMP, 'https://www.hongcheon.go.kr/sutasa/data/file/comm04/thumb-1345433871_zBlWgr3L_20140411_104427_870x489.jpg', null, '상혁보육원', '배려,나눔,사랑하는 마음으로 다가가겠습니다.');