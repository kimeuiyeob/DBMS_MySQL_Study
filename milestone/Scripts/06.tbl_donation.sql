-- milestone.tbl_donation definition

CREATE TABLE `tbl_donation` (
  `donation_number` int NOT NULL AUTO_INCREMENT COMMENT '기부 번호',
  `donation_date` date DEFAULT NULL,
  `donation_application_date` date DEFAULT NULL,
  `donation_amount` int DEFAULT NULL COMMENT '기부금',
  `donation_products` varchar(50) DEFAULT NULL COMMENT '기부 물품',
  `donation_detail_products` varchar(100) DEFAULT NULL COMMENT '기부 물품 상세',
  `icon` varchar(1000) DEFAULT NULL COMMENT '아이콘',
  `quantity` int DEFAULT '0' COMMENT '수량',
  `box_quantity` int DEFAULT '0' COMMENT '박스 수량',
  `individual_member_number` int DEFAULT NULL COMMENT '개인 회원 번호',
  `nursery_school_member_number` int DEFAULT NULL COMMENT '보육원 회원 번호',
  PRIMARY KEY (`donation_number`),
  KEY `FK_tbl_donation_individual_member_number_tbl_individual_member_i` (`individual_member_number`),
  KEY `FK_tbl_donation_nursery_school_member_number_tbl_nursery_school_` (`nursery_school_member_number`),
  CONSTRAINT `FK_tbl_donation_individual_member_number_tbl_individual_member_i` FOREIGN KEY (`individual_member_number`) REFERENCES `tbl_individual_member` (`individual_member_number`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_tbl_donation_nursery_school_member_number_tbl_nursery_school_` FOREIGN KEY (`nursery_school_member_number`) REFERENCES `tbl_nursery_school_member` (`nursery_school_member_number`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='기부';

SELECT donation_number, donation_date, donation_application_date, donation_amount, donation_products, donation_detail_products, icon, quantity, box_quantity, individual_member_number, nursery_school_member_number
FROM milestone.tbl_donation;


INSERT INTO tbl_donation
(donation_date,  donation_amount, donation_products, donation_detail_products, icon, quantity, box_quantity, individual_member_number, nursery_school_member_number)
VALUES('2022-05-12', 300000, null, null, '', 0, 0, 2, 1);

INSERT INTO tbl_donation
(donation_date,  donation_amount, donation_products, donation_detail_products, icon, quantity, box_quantity, individual_member_number, nursery_school_member_number)
VALUES('2022-06-22', 500000, null, null, '', 0, 0, 3, 2);

INSERT INTO tbl_donation
(donation_date, donation_amount, donation_products, donation_detail_products, icon, quantity, box_quantity, individual_member_number, nursery_school_member_number)
VALUES('2022-06-28', null, '음식', '치킨', '', 1, 1, 4, 3);

INSERT INTO tbl_donation
(donation_date, donation_amount, donation_products, donation_detail_products, icon, quantity, box_quantity, individual_member_number, nursery_school_member_number)
VALUES('2022-08-08', 700000, null, null, '', 0, 0, 5, 4);

INSERT INTO tbl_donation
(donation_date, donation_amount, donation_products, donation_detail_products, icon, quantity, box_quantity, individual_member_number, nursery_school_member_number)
VALUES('2022-09-12', 350000, null, null, '', 0, 0, 6, 5);

INSERT INTO tbl_donation
(donation_date,donation_amount, donation_products, donation_detail_products, icon, quantity, box_quantity, individual_member_number, nursery_school_member_number)
VALUES('2022-11-23', 250000, null, null, '', 0, 0, 7, 8);

INSERT INTO tbl_donation
(donation_date, donation_amount, donation_products, donation_detail_products, icon, quantity, box_quantity, individual_member_number, nursery_school_member_number)
VALUES('2022-06-28', null, '가구', '옷걸이', '', 10, 1, 8, 9);

		select
		d.donation_number, d.donation_amount, d.donation_products, d.donation_date,
		i.nickname,
		n.nursery_school_photo, n.nursery_school_member_name, n.nursery_school_introductory_article
		from 
		tbl_donation d, tbl_individual_member i, tbl_nursery_school_member n
		where
		d.donation_number = i.individual_member_number and
		i.individual_member_number = n.nursery_school_member_number
		order by
		donation_date desc
		limit 0,8;