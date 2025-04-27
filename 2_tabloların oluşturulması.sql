CREATE TABLE client_master
(
    client_no VARCHAR(6) PRIMARY KEY,
    name VARCHAR(20),
    address1 VARCHAR(30),
    address2 VARCHAR(30),
    city VARCHAR(15),
    state VARCHAR(15),
    pincode INT,
    bal_due FLOAT
);

CREATE TABLE product_master
(
    product_no VARCHAR(6) PRIMARY KEY,
    description VARCHAR(15),
    profit_percent FLOAT,
    unit_measure VARCHAR(10),
    qty_on_hand INT,
    reorder_lvl INT,
    sell_price INT,
    cost_price INT
);

CREATE TABLE salesman_master
(
    salesman_no VARCHAR(6) PRIMARY KEY,
    CONSTRAINT sb CHECK (salesman_no LIKE 'S%'),
    sal_name VARCHAR(20) NOT NULL,
    address VARCHAR(30) NOT NULL,
    city VARCHAR(20),
    state VARCHAR(20),
    pincode INT,
    sal_amt INT NOT NULL CHECK (sal_amt != 0),
    tgt_to_get INT NOT NULL CHECK (tgt_to_get != 0),
    ytd_sales INT NOT NULL CHECK (ytd_sales != 0),
    remarks VARCHAR(30)
);

CREATE TABLE sales_order
(
    s_order_no VARCHAR(6) PRIMARY KEY,
    CONSTRAINT ob CHECK (s_order_no LIKE '0%'),
    s_order_date DATE,
    client_no VARCHAR(6) FOREIGN KEY REFERENCES client_master(client_no),
    dely_add VARCHAR(6),
    salesman_no VARCHAR(6) FOREIGN KEY REFERENCES salesman_master(salesman_no),
    dely_type CHAR(1) CHECK (dely_type IN ('P', 'F')) DEFAULT 'F',
    billed_yn CHAR(1),
    dely_date DATE,
    CONSTRAINT more CHECK (dely_date >= s_order_date),
    order_status VARCHAR(10) CHECK (order_status IN ('in process', 'fulfilled', 'back order', 'canceled'))
);

CREATE TABLE sales_order_details
(
    s_order_no VARCHAR(6) FOREIGN KEY REFERENCES sales_order(s_order_no),
    product_no VARCHAR(6) FOREIGN KEY REFERENCES product_master(product_no),
    qty_order INT,
    qty_disp INT,
    product_rate FLOAT
);
