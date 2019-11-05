#!/bin/sh
apt-get update
apt-get install -y mysql-server
mysql
create database lab103db;
use lab103db;
create table product (id int NOT NULL AUTO_INCREMENT, name varchar(255), quantity varchar(255), price varchar(255), PRIMARY KEY (id));
insert into product (Name, Quantity, Price) VALUES ('HP Headphone', '03', '1690');
insert into product (Name, Quantity, Price) VALUES ('HP Mouse', '02', '470');
insert into product (Name, Quantity, Price) VALUES ('HP Pro Laptop', '01', '59000');
exit
