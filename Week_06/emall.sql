use emall;

drop table if exists user ;
drop table if exists product;
drop table if exists orders;
drop table if exists order_item;

create table user (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL unique,
  `email` varchar(255),
  `password` varchar(255) NOT NULL,
  `sex` ENUM('男','女')   DEFAULT NULL,
  `birthdate` datetime,
  PRIMARY KEY (`uid`)
);

create table product (
  `pid` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL unique,
  `price` double NOT NULL,
  `count` int NOT NULL,
  `weight` double NOT NULL,
  `describe` varchar(512),
  PRIMARY KEY (`pid`)
);

create table orders (
  `oid` bigint NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `count` int NOT NULL,
  `describe` varchar(512),
  `uid` bigint NOT NULL,
  PRIMARY KEY (`oid`),
  FOREIGN KEY (`uid`) REFERENCES user(`uid`)
);


create table order_item (
	`itemid` bigint NOT NULL AUTO_INCREMENT,
	`pid`   bigint NOT NULL,
	`oid`   bigint NOT NULL,
	
	PRIMARY KEY (`itemid`),
	FOREIGN KEY (`pid`) REFERENCES product(`pid`),
	FOREIGN KEY (`oid`) REFERENCES orders(`oid`)
);