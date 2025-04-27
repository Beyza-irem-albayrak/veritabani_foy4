
-- Madde 1
CREATE VIEW madde_1 AS
SELECT * FROM salesman_master WHERE tgt_to_get > 200;

-- Madde 2
CREATE VIEW product_view (pro_no, [desc], profit, unit_measure, qty) AS
SELECT product_no, description, profit_percent, unit_measure, qty_on_hand FROM product_master;

-- Madde 3
SELECT [desc] FROM product_view WHERE qty = 10;

-- Madde 4
SELECT client_master.name, product_master.description
FROM sales_order
RIGHT JOIN sales_order_details ON sales_order_details.s_order_no = sales_order.s_order_no
LEFT JOIN product_master ON product_master.product_no = sales_order_details.product_no
LEFT JOIN client_master ON client_master.client_no = sales_order.client_no
WHERE DATEDIFF(day, s_order_date, CURRENT_TIMESTAMP) > 10;

-- Madde 5
CREATE VIEW gunluksiparis AS
SELECT *  FROM sales_order WHERE DATEDIFF(day, s_order_date, CURRENT_TIMESTAMP) = 0;


-- Madde 6
CREATE TABLE madde_6 (
    kisi_id INT PRIMARY KEY,
    ad VARCHAR(20) NOT NULL,
    soyad VARCHAR(20),
    CONSTRAINT uniq_kisi UNIQUE(ad, soyad),
    dogum_yili INT DEFAULT 2000
);

-- Madde 7
INSERT INTO madde_6 (kisi_id, ad, soyad, dogum_yili) VALUES
(1, 'Ahmet', 'Yılmaz', 1998),
(2, 'Zeynep', 'Kaya', 1995),
(3, 'Mehmet', 'Çelik', 1999),
(4, 'Aliye', 'Demir', 1997),
(5, 'Mustafa', 'Aydın', 1998),
(6, 'Feyza', 'Taş', 1996);

SELECT ad, soyad FROM madde_6;


-- Madde 7 (İndex)
CREATE INDEX indeksleme ON madde_6 (ad DESC, soyad ASC);

SELECT ad, soyad FROM madde_6;


