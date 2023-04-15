create database product;

use product;

create table tbl_product(
   product_number int unsigned auto_increment primary key,
   product_name varchar(200),
   product_price int unsigned,
   product_stock int unsigned
);

select * from tbl_product;

