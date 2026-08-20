`
Assignment 2 — Product Management System

Use the same products table and data created in previous Assignment.

==> Write SQL queries for the following questions:

Find products manufactured after '2024-01-01'.

Find products manufactured before '2023-01-01'.

Find products manufactured between '2022-01-01' and '2024-12-31'.

Find products manufactured after '2023-01-01' whose price is greater than ₹20,000.

Find products manufactured between '2023-01-01' and '2025-12-31' whose rating is at least 4.

Find products manufactured after '2023-01-01' whose stock is greater than 10.

Find products manufactured before '2024-01-01' OR whose price is greater than ₹80,000.

Find products manufactured between '2023-01-01' and '2025-12-31' whose stock is not 0.

Find products manufactured after '2022-01-01' whose price is between ₹15,000 and ₹60,000 and rating is at least 3.

Find products manufactured before '2024-01-01' whose rating is less than 3 OR whose stock is 0.

Find products belonging to Electronics or Furniture that were manufactured after '2023-01-01'.

Find products belonging to Electronics, Clothing, or Grocery that were manufactured between '2022-01-01' and '2025-12-31'.

Find products from Indore, Pune, or Delhi that were manufactured after '2023-06-01'.

Find products that are NOT from Indore or Bhopal and were manufactured after '2023-01-01'.

Find products whose brand is NOT Samsung, LG, or Sony and which were manufactured after '2022-01-01'.

Find products whose name starts with S and were manufactured after '2023-01-01'.

Find products whose name contains phone and were manufactured between '2022-01-01' and '2025-12-31'.

Find products whose name contains the letter a and whose manufacturing date is after '2024-01-01'.

Find products whose brand starts with S and were manufactured after '2022-01-01'.

Find products whose brand ends with a and whose manufacturing date is between '2023-01-01' and '2026-12-31'.

Find products from Indore, Pune, or Delhi whose manufacturing date is after '2023-01-01', price is between ₹20,000 and ₹70,000, rating is at 
least 4, and stock is not 0.

Find products belonging to Electronics or Furniture whose manufacturing date is after '2022-12-31', price is less than ₹60,000, stock is 
greater than 10, and rating is at least 3.

Find products manufactured between '2022-01-01' and '2025-12-31' whose category is Electronics, Clothing, or Furniture, rating is greater than 
3, and city is not Mumbai.

Find products manufactured after '2023-01-01' whose name contains a, price is NOT between ₹10,000 and ₹50,000, and stock is greater than 5.

Find products manufactured between '2023-01-01' and '2025-12-31' whose brand is not Samsung, LG, or Sony, price is greater than ₹25,000, 
rating is at least 4, and stock is not 0.

Find products belonging to Electronics or Furniture, manufactured after '2023-01-01', whose price is greater than ₹40,000 OR rating is 5, and 
whose stock is greater than 10.

Find products from Indore, Pune, or Delhi whose manufacturing date is between '2023-01-01' and '2025-12-31', price is between ₹15,000 and ₹80,
000, rating is at least 4, stock is greater than 0, and category is not Grocery.

Find products whose name starts with S or M, city is not Mumbai or Bhopal, price is between ₹15,000 and ₹80,000, rating is at least 4, and 
manufacturing date is after '2023-01-01'.

Find products manufactured between '2022-01-01' and '2025-12-31' whose category is Electronics, Furniture, or Clothing, price is NOT between 
₹10,000 and ₹50,000, stock is greater than 5, rating is greater than 3, and city is not Mumbai or Bhopal.

Find products whose name starts with S OR contains phone, category is Electronics or Furniture, manufacturing date is between '2023-01-01' and 
'2026-12-31', price is between ₹20,000 and ₹90,000, rating is at least 4, stock is greater than 0, city is Indore, Pune, or Delhi, and brand 
is NOT Samsung, LG, or Sony.
`




















mysql> SELECT * FROM products1;

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          4 | Office Chair     | Furniture   | Ikea       | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma       | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- |          7 | Running Shoes    | Clothing    | Nike       | Bhopal |  5000 |    30 |      5 | 2026-03-05  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |          9 | Cooking Oil 5L   | Grocery     | Fortune    | Mumbai |   800 |     0 |      4 | 2026-01-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung    | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 10 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture > '2024-01-01';

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          7 | Running Shoes    | Clothing    | Nike       | Bhopal |  5000 |    30 |      5 | 2026-03-05  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |          9 | Cooking Oil 5L   | Grocery     | Fortune    | Mumbai |   800 |     0 |      4 | 2026-01-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung    | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 7 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture < '2023-01-01';

-- +------------+--------------+-----------+-------+--------+-------+-------+--------+-------------+
-- | product_id | product_name | category  | brand | city   | price | stock | rating | manufacture |
-- +------------+--------------+-----------+-------+--------+-------+-------+--------+-------------+
-- |          4 | Office Chair | Furniture | Ikea  | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- +------------+--------------+-----------+-------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture BETWEEN '2022-01-01' AND '2024-12-31';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          4 | Office Chair     | Furniture   | Ikea    | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma    | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture > '2023-01-01' AND price > 20000;

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP      | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture BETWEEN '2023-01-01' AND '2025-12-31' AND rating >= 4;

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma       | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 6 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture > '2023-01-01' AND stock > 10;

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma       | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- |          7 | Running Shoes    | Clothing    | Nike       | Bhopal |  5000 |    30 |      5 | 2026-03-05  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 7 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture < '2024-01-01' OR price > 80000;

-- +------------+------------------+-------------+-------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+-------+--------+-------+-------+--------+-------------+
-- |          3 | Wireless Earbuds | Electronics | Sony  | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          4 | Office Chair     | Furniture   | Ikea  | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma  | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- +------------+------------------+-------------+-------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture BETWEEN '2023-01-01' AND '2025-12-31' AND stock != 0;

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma       | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 6 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE (manufacture > '2022-01-01' AND price BETWEEN 15000 AND 60000) AND rating >= 3;

-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1 | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture < '2024-01-01' AND (rating < 3 OR stock = 0);

-- +------------+--------------+-----------+-------+--------+-------+-------+--------+-------------+
-- | product_id | product_name | category  | brand | city   | price | stock | rating | manufacture |
-- +------------+--------------+-----------+-------+--------+-------+-------+--------+-------------+
-- |          4 | Office Chair | Furniture | Ikea  | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- +------------+--------------+-----------+-------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE category IN ('Electronics', 'Furniture') AND manufacture > '2023-01-01';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP      | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE category IN ('Electronics', 'Clothing', 'Grocery') AND manufacture BETWEEN '2022-01-01' AND '2025-12-31';

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma       | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE city IN ('Indore', 'Pune', 'Delhi') AND manufacture > '2023-06-01';

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung    | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE city NOT IN ('Indore', 'Bhopal') AND manufacture > '2023-01-01';

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |          9 | Cooking Oil 5L   | Grocery     | Fortune    | Mumbai |   800 |     0 |      4 | 2026-01-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung    | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE brand NOT IN ('Samsung', 'LG', 'Sony') AND manufacture > '2022-01-01';

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          4 | Office Chair     | Furniture   | Ikea       | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma       | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- |          7 | Running Shoes    | Clothing    | Nike       | Bhopal |  5000 |    30 |      5 | 2026-03-05  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |          9 | Cooking Oil 5L   | Grocery     | Fortune    | Mumbai |   800 |     0 |      4 | 2026-01-15  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 7 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE product_name LIKE 'S%' AND manufacture > '2023-01-01';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)












mysql> SELECT * FROM products1 WHERE product_name LIKE '%phone%' AND manufacture BETWEEN '2022-01-01' AND '2025-12-31';

-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1 | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE product_name LIKE '%a%' AND manufacture > '2024-01-01';

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung    | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE brand LIKE '%s%' AND manufacture > '2022-01-01';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE brand LIKE '%a' AND manufacture BETWEEN '2023-01-01' AND '2026-12-31';

-- +------------+----------------+-----------+-------+--------+-------+-------+--------+-------------+
-- | product_id | product_name   | category  | brand | city   | price | stock | rating | manufacture |
-- +------------+----------------+-----------+-------+--------+-------+-------+--------+-------------+
-- |          5 | Study Table    | Furniture | Ikea  | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt | Clothing  | Puma  | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- +------------+----------------+-----------+-------+--------+-------+-------+--------+-------------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE city IN ('Indore', 'Pune', 'Delhi') AND manufacture > '2023-01-01' AND price BETWEEN 20000 AND 70000 AND rating >= 4 AND stock != 0;

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE category IN ('Electronics', 'Furniture') AND manufacture > '2022-12-31' AND price < 60000 AND stock > 10 AND city != 'Mumbai';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE category IN ('Electronics', 'Furniture') AND manufacture > '2022-12-31' AND price < 60000 AND stock > 10 AND rating >= 3;

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture BETWEEN '2022-01-01' AND '2025-12-31' AND category IN ('Electronics', 'Clothing', 'Furniture') AND rating > 3 AND city != 'Mumbai';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP      | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma    | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture > '2023-01-01' AND product_name LIKE '%a%' AND price NOT BETWEEN 10000 AND 50000 AND stock > 5;

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung    | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 5 rows in set (0.00 sec)












mysql> SELECT * FROM products1 WHERE manufacture BETWEEN '2023-01-01' AND '2025-12-31' AND brand NOT IN ('Samsung', 'LG', 'Sony') AND price > 25000 AND rating >=4 AND stock != 0;

-- +------------+---------------+-------------+-------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+-------+--------+-------+-------+--------+-------------+
-- |          2 | Laptop Pro 14 | Electronics | HP    | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- +------------+---------------+-------------+-------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE category IN ('Electronics', 'Furniture') AND manufacture > '2023-01-01' AND (price > 40000 OR rating = 5) AND stock > 10;

-- +------------+---------------+-------------+-------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+-------+--------+-------+-------+--------+-------------+
-- |          2 | Laptop Pro 14 | Electronics | HP    | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          5 | Study Table   | Furniture   | Ikea  | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- +------------+---------------+-------------+-------+--------+-------+-------+--------+-------------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE city IN ('Indore', 'Pune', 'Delhi') AND manufacture BETWEEN '2023-01-01' AND '2025-12-31' AND price BETWEEN 15000 AND 80000 AND rating >=4 AND stock > 0 AND category != 'Grocery';

-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1 | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE (product_name LIKE 'S%' OR product_name LIKE 'M%') AND city NOT IN ('Mumbai', 'Bhopal') AND price BETWEEN 15000 AND 80000 AND rating >= 4 AND manufacture > '2023-01-01';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE manufacture BETWEEN '2022-01-01' AND '2025-12-31' AND category IN ('Electronics', 'Furniture', 'Clothing') AND price NOT BETWEEN 10000 AND 50000 AND stock > 5 AND rating > 3 AND city NOT IN ('Mumbai', 'Bhopal');

-- +------------+------------------+-------------+-------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+-------+--------+-------+-------+--------+-------------+
-- |          3 | Wireless Earbuds | Electronics | Sony  | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea  | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma  | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- +------------+------------------+-------------+-------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE (product_name LIKE 'S%' OR product_name LIKE '%phone%') AND category IN ('Electronics', 'Furniture') AND manufacture BETWEEN '2023-01-01' AND '2026-12-31' AND price BETWEEN 20000 AND 90000 AND rating >= 4 AND stock > 0 AND city IN ('Indore', 'Pune', 'Delhi') AND brand NOT IN ('Samsung', 'LG', 'Sony');

-- Empty set (0.00 sec)
