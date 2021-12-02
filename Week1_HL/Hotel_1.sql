CREATE TABLE manager (
mid int NOT NULL AUTO_INCREMENT,
mname varchar(100) NOT NULL,
shift varchar(100),
salary double,
PRIMARY KEY mid
);

CREATE TABLE corder (
orderid int NOT NULL AUTO_INCREMENT,
cname varchar(100),
phone varchar,
address varchar(100),
itemid varchar(100),
qty int,
total double,
cdate varchar,
PRIMARY KEY orderid
);

CREATE TABLE item (
itemid int NOT NULL AUTO_INCREMENT,
dish varchar,
price double,
category varchar,
itemid varchar,
qty int,
total double,
cdate varchar,
PRIMARY KEY itemid
);