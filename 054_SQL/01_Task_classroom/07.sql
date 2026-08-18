`
QNO  7: Create and Insert into products Table
Columns:

product_id INT

product_name VARCHAR(100)

category VARCHAR(50)

price DECIMAL(7,2)

stock_quantity INT

supplier_name VARCHAR(100)

manufacture_date DATE

expiry_date DATE

Task:

Insert 6 products (some with expiry dates, some without)
`











mysql> CREATE TABLE products( product_id INT, product_name VARCHAR(100), category VARCHAR(50), price DECIMAL(7,2), stock_quantity INT, supplier_name VARCHAR(100), manufacture_date DATE, expiry_date DATE);

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC products;

-- +------------------+--------------+------+-----+---------+-------+
-- | Field            | Type         | Null | Key | Default | Extra |
-- +------------------+--------------+------+-----+---------+-------+
-- | product_id       | int          | YES  |     | NULL    |       |
-- | product_name     | varchar(100) | YES  |     | NULL    |       |
-- | category         | varchar(50)  | YES  |     | NULL    |       |
-- | price            | decimal(7,2) | YES  |     | NULL    |       |
-- | stock_quantity   | int          | YES  |     | NULL    |       |
-- | supplier_name    | varchar(100) | YES  |     | NULL    |       |
-- | manufacture_date | date         | YES  |     | NULL    |       |
-- | expiry_date      | date         | YES  |     | NULL    |       |
-- +------------------+--------------+------+-----+---------+-------+
-- 8 rows in set (0.00 sec)



mysql> INSERT INTO products VALUES
    -> (1, 'Wireless Mouse', 'Electronics', 599.00, 50, 'TechSupply India', '2026-01-15', NULL),
    -> (2, 'Organic Honey', 'Grocery', 450.00, 30, 'Nature Foods', '2026-03-10', '2027-03-10'),
    -> (3, 'Notebook A5', 'Stationery', 120.50, 100, 'Paper World', '2026-02-20', NULL),
    -> (4, 'Face Wash', 'Personal Care', 299.99, 45, 'GlowCare Pvt Ltd', '2026-04-05', '2028-04-05'),
    -> (5, 'USB Cable', 'Electronics', 249.00, 75, 'Digital Hub', '2026-05-12', NULL),
    -> (6, 'Fruit Juice', 'Beverages', 85.00, 60, 'Fresh Drinks Ltd', '2026-06-01', '2027-06-01');

-- Query OK, 6 rows affected (0.01 sec)
-- Records: 6  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM products;

-- +------------+----------------+---------------+--------+----------------+------------------+------------------+-------------+
-- | product_id | product_name   | category      | price  | stock_quantity | supplier_name    | manufacture_date | expiry_date |
-- +------------+----------------+---------------+--------+----------------+------------------+------------------+-------------+
-- |          1 | Wireless Mouse | Electronics   | 599.00 |             50 | TechSupply India | 2026-01-15       | NULL        |
-- |          2 | Organic Honey  | Grocery       | 450.00 |             30 | Nature Foods     | 2026-03-10       | 2027-03-10  |
-- |          3 | Notebook A5    | Stationery    | 120.50 |            100 | Paper World      | 2026-02-20       | NULL        |
-- |          4 | Face Wash      | Personal Care | 299.99 |             45 | GlowCare Pvt Ltd | 2026-04-05       | 2028-04-05  |
-- |          5 | USB Cable      | Electronics   | 249.00 |             75 | Digital Hub      | 2026-05-12       | NULL        |
-- |          6 | Fruit Juice    | Beverages     |  85.00 |             60 | Fresh Drinks Ltd | 2026-06-01       | 2027-06-01  |
-- +------------+----------------+---------------+--------+----------------+------------------+------------------+-------------+
-- 6 rows in set (0.00 sec)