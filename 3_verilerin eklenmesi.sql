INSERT INTO client_master
  (client_no, name, city, pincode, state, bal_due)
VALUES
  ('0001', 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000),
  ('0002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 0),
  ('0003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000),
  ('0004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0),
  ('0005', 'Ravi', 'Delhi', 100001, '', 2000),
  ('0006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0);

INSERT INTO Product_master
  (Product_no, Description, Profit_percent, Unit_measure, Qty_on_hand, Reorder_lvl, Sell_price, Cost_price)
VALUES
  ('P00001', '1.44floppies', 5, 'piece', 100, 20, 525, 500),
  ('P03453', 'Monitors', 6, 'piece', 10, 3, 12000, 11200),
  ('P06734', 'Mouse', 5, 'piece', 20, 5, 1050, 500),
  ('P07865', '1.22 floppies', 5, 'piece', 100, 20, 525, 500),
  ('P07868', 'Keyboards', 2, 'piece', 10, 3, 3150, 3050),
  ('P07885', 'CD Drive', 2.5, 'piece', 10, 3, 5250, 5100),
  ('P07965', '540 HDD', 4, 'piece', 10, 3, 8400, 8000),
  ('P07975', '1.44 Drive', 5, 'piece', 10, 3, 1050, 1000),
  ('P08865', '1.22 Drive', 5, 'piece', 2, 3, 1050, 1000);
  
INSERT INTO Salesman_Master
  (Salesman_no, Sal_name, Address, City, Pincode, State, Sal_amt, Tgt_to_get, Ytd_sales, Remarks)
VALUES
  ('S00001', 'Kiran', 'A/14 worli', 'Bombay', 400002, 'Mah', 3000, 100, 50, 'Good'),
  ('S00002', 'Manish', '65,nariman', 'Bombay', 400001, 'Mah', 3000, 200, 100, 'Good'),
  ('S00003', 'Ravi', 'P-7 Bandra', 'Bombay', 400032, 'Mah', 3000, 200, 100, 'Good'),
  ('S00004', 'Ashish', 'A/5 Juhu', 'Bombay', 400044, 'Mah', 3500, 200, 150, 'Good');

INSERT INTO Sales_Order
  (S_order_no, S_order_date, Client_no, Dely_type, Billed_yn, Salesman_no, Dely_date, Order_status)
VALUES
  ('019001', '19960112', '0001', 'F', 'N', 'S00001', '19960120', 'in process'),
  ('019002', '19960125', '0002', 'P', 'N', 'S00002', '19960127', 'canceled'),
  ('046865', '19960218', '0003', 'F', 'Y', 'S00003', '19960220', 'fulfilled'),
  ('019003', '19960403', '0001', 'F', 'Y', 'S00001', '19960407', 'fulfilled'),
  ('046866', '19960520', '0004', 'P', 'N', 'S00002', '19960522', 'canceled'),
  ('010008', '19960524', '0005', 'F', 'N', 'S00004', '19960526', 'in process');

INSERT INTO Sales_Order_Details
  (S_order_no, Product_no, Qty_order, Qty_disp, Product_rate)
VALUES
  ('019001', 'P00001', 4, 4, 525),
  ('019001', 'P07965', 2, 1, 8400),
  ('019001', 'P07885', 2, 1, 5250),
  ('019002', 'P00001', 10, 0, 525),
  ('046865', 'P07868', 3, 3, 3150),
  ('046865', 'P07885', 10, 10, 5250),
  ('019003', 'P00001', 4, 4, 1050),
  ('019003', 'P03453', 2, 2, 1050),
  ('046866', 'P06734', 1, 1, 12000),
  ('046866', 'P07965', 1, 0, 8400),
  ('010008', 'P07975', 1, 0, 1050),
  ('010008', 'P00001', 10, 5, 525);