-- milestone.tbl_news definition

CREATE TABLE `tbl_news` (
  `news_number` int NOT NULL AUTO_INCREMENT COMMENT '소식 번호',
  `news_title` varchar(100) NOT NULL COMMENT '소식 제목',
  `news_content` varchar(1000) NOT NULL COMMENT '소식 내용',
  `news_image` varchar(1000) DEFAULT NULL COMMENT '소식 이미지',
  `news_date_content` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '소식 작성일',
  PRIMARY KEY (`news_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='소식';

SELECT news_number, news_title, news_content, news_image, news_date_content
FROM milestone.tbl_news;

INSERT INTO milestone.tbl_news
(news_title, news_content, news_image, news_date_content)
VALUES('코끼리 보육원 새소식', '아기 코끼리가 태어났어요', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXczXFu7LkWL539IaExq7kdkD6b7m4knzRjA&usqp=CAU', CURRENT_TIMESTAMP);

INSERT INTO milestone.tbl_news
(news_title, news_content, news_image, news_date_content)
VALUES('거북이 보육원 새소식', '아기 거북이가 태어났어요', 'http://storage.enuri.info/pic_upload/knowbox2/202109/1119131252021090392050f6e-42af-4845-bfe9-b793d49edad0.jpg', CURRENT_TIMESTAMP);

INSERT INTO milestone.tbl_news
(news_title, news_content, news_image, news_date_content)
VALUES('캥거루 보육원 새소식', '아기 캥거루가 태어났어요', 'https://images.chosun.com/resizer/mnmW-OrqF4I_Sfs2fJzW6xI6ozI=/464x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/HVFFPOWDFVRLR6DCB7M2RLY4RM.jpg', CURRENT_TIMESTAMP);

INSERT INTO milestone.tbl_news
(news_title, news_content, news_image, news_date_content)
VALUES('말 보육원 새소식', '망아지가 태어났어요', 'https://previews.123rf.com/images/boguslavovna/boguslavovna0902/boguslavovna090200118/4283844-%EC%83%88%EB%81%BC-%EB%A7%9D%EC%95%84%EC%A7%80%EB%8A%94-%ED%98%80%EB%A5%BC-%EB%B3%B4%EC%97%AC%EC%A4%80%EB%8B%A4-.jpg', CURRENT_TIMESTAMP);

INSERT INTO milestone.tbl_news
(news_title, news_content, news_image, news_date_content)
VALUES('소 보육원 새소식', '송아지가 태어났어요', 'https://img5.yna.co.kr/photo/yna/YH/2021/10/26/PYH2021102620190001300_P4.jpg', CURRENT_TIMESTAMP);
