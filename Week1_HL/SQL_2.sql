/*SQL Editor: Query*/

/* Create Database */
CREATE DATABASE Company;

USE Company

/* Create table */
CREATE TABLE customers (
    customer_id INTEGER NOT NULL,
    first_name varchar(100),
    last_name varchar(100),
    phone varchar,
    email varchar,
    street varchar,
    city varchar,
    state varchar,
    zip_code varchar,
    
    PRIMARY KEY (customer_id)
);

/* Display all(*) data */
SELECT * FROM customers;

/* Create table */
CREATE TABLE stores (
    store_id INTEGER NOT NULL,
    store_name varchar(100),
    phone varchar,
    email varchar,
    street varchar,
    city varchar,
    state varchar,
    zip_code varchar,
    
    PRIMARY KEY (store_id)
);

/* Display all(*) data */
SELECT * FROM stores;

/* Create table */
CREATE TABLE orders (
    order_id INTEGER NOT NULL,
    customer_id varchar,
    order_status varchar,
    order_date date,
    required_date date,
    shipped_date date,
    store_id INTEGER,
    staff_id INTEGER,
    
    PRIMARY KEY (order_id)
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
    FOREIGN KEY (staff_id) REFERENCES staffs(staff_id)
);

/* Display all(*) data */
SELECT * FROM orders;

/* Create table */
CREATE TABLE staffs (
    staff_id INTEGER NOT NULL,
    first_name varchar(100),
    last_name varchar(100),
    phone varchar,
    email varchar,
    active varchar,
    store_id INTEGER,
    manager_id INTEGER,
    
    PRIMARY KEY (staff_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);


/* Display all(*) data */
SELECT * FROM staffs;

/* Create table */
CREATE TABLE order_items (
    order_id INTEGER NOT NULL,
    item_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    list_price double,
    discount double,
    
    PRIMARY KEY (order_id)
    PRIMARY KEY (item_id)
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) /*********************/
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

/* Display all(*) data */
SELECT * FROM order_items;

/*=====================================*/

/* Create table */
CREATE TABLE categories (
    category_id INTEGER NOT NULL,
    category_name varchar(100),
    
    PRIMARY KEY (category_id)
);

/* Display all(*) data */
SELECT * FROM categories;

/* Create table */
CREATE TABLE brands (
    brand_id INTEGER NOT NULL,
    brand_name varchar(100),
    
    PRIMARY KEY (brand_id)
);

/* Display all(*) data */
SELECT * FROM brands;

/* Create table */
CREATE TABLE stocks (
    store_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER,
    
    PRIMARY KEY (store_id)
    PRIMARY KEY (store_id)
    FOREIGN KEY (store_id) REFERENCES stores(store_id) /*********************/
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

/* Display all(*) data */
SELECT * FROM stocks;

/* Create table */
CREATE TABLE products (
    product_id INTEGER NOT NULL,
    product_name varchar(100),
    brand_id INTEGER,
    category_id INTEGER,
    model_year YEAR,
    list_price double,
    
    PRIMARY KEY (product_id)
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id)
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

/* Display all(*) data */
SELECT * FROM products;


/* DROP TABLE corder; 
DROP TABLE item;
DROP TABLE manager; */