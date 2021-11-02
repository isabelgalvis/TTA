/*SQL Editor: Query*/

/* Create table */
CREATE TABLE manager (
    mname varchar(100),
    shift varchar(100),
    salary double,
    mid int NOT NULL,
    
    PRIMARY KEY (mid)
);

/* 1 Insert Data */
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Adrian Manzo', 'a', 500, 2);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Fred Smith', 'a', 600, 3);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'John Cenat', 'a', 500, 4);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Many Dale', 'b', 400, 5);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Hans Rubick', 'b', 300, 6);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Carol Dune', 'b', 400, 7);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Sam Monto', 'c', 500, 8);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Mike Arlo', 'c', 600, 9);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Cate Mills', 'c', 700, 12);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Marty Lopez', 'd', 500, 1);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Beth Sandler', 'd', 600, 11);
INSERT INTO manager (mname, shift, salary, mid)
    VALUES ( 'Bob Jones', 'd', 700, 10);

/* Display all(*) data */
SELECT * FROM manager;

/* Create table */
CREATE TABLE item (
    itemid varchar NOT NULL,
    dish varchar,
    price double,
    category varchar,
    
    PRIMARY KEY (itemid)
);

/* 1 Insert Data */
INSERT INTO item (itemid, dish, price, category)
    VALUES (1, 'main', 50.00, 'lunch');
INSERT INTO item (itemid, dish, price, category)
    VALUES (2, 'salad', 5.45, 'side');
INSERT INTO item (itemid, dish, price, category)
    VALUES (3, 'ice cream', 4.45, 'dessert');
INSERT INTO item (itemid, dish, price, category)
    VALUES (4, 'fish', 8.45, 'main');
INSERT INTO item (itemid, dish, price, category)
    VALUES (5, 'meat', 9.45, 'main');
INSERT INTO item (itemid, dish, price, category)
    VALUES (6, 'apple pie', 5.45, 'dessert');
INSERT INTO item (itemid, dish, price, category)
    VALUES (7, 'pizza lunch', 7.45, 'lunch');
INSERT INTO item (itemid, dish, price, category)
    VALUES (8, 'steak plus', 15.45, 'dinner');
INSERT INTO item (itemid, dish, price, category)
    VALUES (9, 'egg and waffles', 8.25, 'breakfast');
INSERT INTO item (itemid, dish, price, category)
    VALUES (10, 'fries', 6.10, 'side');

/* Display all(*) data */
SELECT * FROM item;

/* Create table */
CREATE TABLE corder (
    orderid INTEGER NOT NULL,
    cname varchar,
    phone varchar,
    address varchar,
    itemid varchar,
    qty int,
    total double,
    date varchar,
    
    PRIMARY KEY (orderid),
    FOREIGN KEY (itemid) REFERENCES item(itemid)
);

/* 1 Insert Data */
INSERT INTO corder (cname, phone, address, itemid, qty, date)
    VALUES ('Anita Vegas', '123 456 7454', '12 Av. 3', 1, 2, '2021-01-02');
INSERT INTO corder (cname, phone, address, itemid, qty, date)
    VALUES ('Roger Andrews', '123 456 000', '12 Street 4', 4, 1, '2021-01-02');
INSERT INTO corder (cname, phone, address, itemid, qty, date)
    VALUES ('Mario Unis', '123 456 000', '3 Av 4', 5, 1, '2021-01-02');
INSERT INTO corder (cname, phone, address, itemid, qty, date)
    VALUES ('Carlo Martinez', '123 333 000', '24 Road 4', 4, 1, '2021-01-03');
INSERT INTO corder (cname, phone, address, itemid, qty, date)
    VALUES ('Sophia King', '333 456 000', '15 Street 23', 5, 2, '2021-01-03');
INSERT INTO corder (cname, phone, address, itemid, qty, date)
    VALUES ('Misty Rogers', '444 456 000', '11 Road 54', 7, 5, '2021-01-03');
INSERT INTO corder (cname, phone, address, itemid, qty, date)
    VALUES ('Roger Andrews', '123 777 000', '58 Av 24', 10, 3, '2021-01-03');
INSERT INTO corder (cname, phone, address, itemid, qty, date)
    VALUES ('Roger Andrews', '123 238 3210', '85 Street 1', 11, 4, '2021-01-03');
    
/* Calculate the Total Column */
UPDATE corder
SET total = qty * item.price
FROM item
WHERE corder.itemid = item.itemid

/* Display all(*) data */
SELECT * FROM corder;

/* 2 Manager Average Salary */
SELECT AVG(salary) FROM manager;

/* 3 Orders by Date */
SELECT date, COUNT(orderid) FROM corder
GROUP BY date;

/* 4 Total Ammount of the Order */
SELECT orderid, total FROM corder

/* 5 Display total number of dishes serve in hotel */
SELECT orderid, SUM(qty) FROM corder

/* 6 Number of Dishes by Category */
SELECT category, COUNT(dish) FROM item
GROUP BY category;

/*=============================*/

/*m  V I AM HAVING PROBLEMS WITH AUTOIINCREMENT - IT IS WORKING BUT WITHPOUT DECLARING IT - WHAT CAN BE CAUSING THIS? *?

/*Auto_increment*/
create table myorder(
oid int primary key auto_increment,
item varchar(20),
quantity int);

select * from myorder;

/*oid is auto_increment--> no need to insert into row*/
insert into myorder(item,quantity)
values('mobile',2);

insert into myorder(item,quantity)
values('watch',1);

select * from myorder;

/* DROP TABLE corder; 
DROP TABLE item;
DROP TABLE manager; */