create database k_bakers;
use k_bakers;

create table bakeryitem (
item_number int primary key auto_increment,
item_name varchar(50),
item_price bigint,
item_quantity bigint
);

drop database k_bakers;
alter table bakeryitem auto_increment = 1001;
insert into bakeryitem(item_name,item_price,item_quantity)
values('chocalate biscuits',5,50),
('ice cake',400,10),
('cocunat biscuites',8,20),
('strowberry cake',300,5),
('brownie',15,40),
('pasteries',15,30);

select * from bakeryitem;
select * from bakeryitem where item_price < 100;
select item_name , item_quantity from bakeryitem where item_price >300;
select * from bakeryitem where item_quantity < 20;
update bakeryitem set  item_quantity = 8 where item_name = 'ice cake';

