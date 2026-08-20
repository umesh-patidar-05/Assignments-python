`
Assignment 1 — Product Management System
Table: products

Create a products table with:

Product ID
Product Name
Category
Brand
City
Price
Stock
Rating
Manufacturing Date
Data Requirements

Insert at least 8 products.

Your data should include:

Categories: Electronics, Furniture, Clothing, Grocery
At least 5 different brands
Cities: Indore, Bhopal, Pune, Mumbai, Delhi
Price: ₹500 to ₹1,00,000
Stock: 0 to 100
Rating: 1 to 5
Manufacturing dates from 2021 to 2026
Some products with the same category
Some products with the same brand
Some similar prices
Some products with zero stock

SQL Queries
1. Find products whose price is greater than ₹30,000 AND rating is at least 4, but exclude products from Mumbai.

2. Find products whose stock is less than 20 OR price is greater than ₹75,000, and whose category is not Grocery.

3. Find products whose price is between ₹15,000 and ₹60,000 AND rating is between 3 and 5, and which were manufactured after 2022.

4. Find products from Indore, Pune, or Delhi whose price is greater than ₹20,000 AND stock is not 0.

5. Find products belonging to Electronics or Furniture using IN.

6. Find products belonging to Electronics, Clothing, or Grocery using IN.

7. Find products that are not from Indore or Bhopal using NOT IN.

8. Find products whose brand is not Samsung, LG, or Sony.

9. Find products whose price is between ₹10,000 and ₹50,000.

10. Find products whose stock is between 20 and 60.

11. Find products whose rating is between 3 and 5, and whose price is greater than ₹20,000.

12. Find products manufactured between 2023 and 2025, whose category is Electronics or Furniture.

13. Find products whose name starts with S.

14. Find products whose name contains phone anywhere.

15. Find products whose brand ends with a.

16. Find products from Indore or Pune, whose price is between ₹20,000 and ₹70,000, and whose rating is at least 4.

17. Find products belonging to Electronics or Furniture, whose stock is greater than 10, whose price is less than ₹60,000, and whose manufacturing date is after 2022.

18. Find products whose name contains the letter a, whose price is NOT between ₹10,000 and ₹50,000, and whose stock is greater than 5.

19. Find products manufactured between 2022 and 2025, belonging to Electronics, Clothing, or Furniture, having a rating greater than 3, and whose city is not Mumbai.

20. Find products whose name starts with S or M, whose city is not Indore or Mumbai, whose price is between ₹15,000 and ₹80,000, whose rating is at least 4, and whose manufacturing date is after 2023.
`












mysql> CREATE TABLE products1 (product_id INT PRIMARY KEY AUTO_INCREMENT, product_name VARCHAR(50), category VARCHAR(50), brand VARCHAR(40), city VARCHAR(40), price INT, stock INT, rating TINYINT, manufacture DATE);

-- Query OK, 0 rows affected (0.07 sec)











mysql> DESC products1;

-- +--------------+-------------+------+-----+---------+----------------+
-- | Field        | Type        | Null | Key | Default | Extra          |
-- +--------------+-------------+------+-----+---------+----------------+
-- | product_id   | int         | NO   | PRI | NULL    | auto_increment |
-- | product_name | varchar(50) | YES  |     | NULL    |                |
-- | category     | varchar(50) | YES  |     | NULL    |                |
-- | brand        | varchar(40) | YES  |     | NULL    |                |
-- | city         | varchar(40) | YES  |     | NULL    |                |
-- | price        | int         | YES  |     | NULL    |                |
-- | stock        | int         | YES  |     | NULL    |                |
-- | rating       | tinyint     | YES  |     | NULL    |                |
-- | manufacture  | date        | YES  |     | NULL    |                |
-- +--------------+-------------+------+-----+---------+----------------+
-- 9 rows in set (0.01 sec)













mysql> INSERT INTO products1(product_name, category, brand, city, price, stock, rating, manufacture)
    -> VALUES
    -> ('Smartphone X1', 'Electronics', 'Samsung', 'Indore', 25000, 45, 4, '2024-05-15'),
    -> ('Laptop Pro 14', 'Electronics', 'HP', 'Bhopal', 65000, 20, 5, '2025-02-10'),
    -> ('Wireless Earbuds', 'Electronics', 'Sony', 'Pune', 5000, 60, 4, '2023-08-20'),
    -> ('Office Chair', 'Furniture', 'Ikea', 'Mumbai', 8000, 0, 4, '2022-06-12'),
    -> ('Study Table', 'Furniture', 'Ikea', 'Delhi', 8000, 15, 5, '2024-01-25'),
    -> ('Cotton T-Shirt', 'Clothing', 'Puma', 'Indore', 1500, 70, 4, '2023-04-18'),
    -> ('Running Shoes', 'Clothing', 'Nike', 'Bhopal', 5000, 30, 5, '2026-03-05'),
    -> ('Basmati Rice 5kg', 'Grocery', 'India Gate', 'Pune', 750, 100, 5, '2025-07-10'),
    -> ('Cooking Oil 5L', 'Grocery', 'Fortune', 'Mumbai', 800, 0, 4, '2026-01-15'),
    -> ('Smart TV 55 Inch', 'Electronics', 'Samsung', 'Delhi', 65000, 10, 5, '2026-04-20');

-- Query OK, 10 rows affected (0.01 sec)
-- Records: 10  Duplicates: 0  Warnings: 0












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










mysql> select * from products1 WHERE price > 30000 AND rating >= 4 AND city != 'Mumbai';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          2 | Laptop Pro 14    | Electronics | HP      | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 2 rows in set (0.00 sec)










mysql> SELECT * FROM  products1 WHERE stock < 20 OR price > 75000 AND category != 'Grocery';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          4 | Office Chair     | Furniture   | Ikea    | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          9 | Cooking Oil 5L   | Grocery     | Fortune | Mumbai |   800 |     0 |      4 | 2026-01-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 4 rows in set (0.00 sec)










mysql> SELECT * FROM  products1 WHERE (stock < 20 OR price > 75000) AND category != 'Grocery';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          4 | Office Chair     | Furniture   | Ikea    | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE (price BETWEEN 15000 AND 60000 AND rating BETWEEN 3 AND 5) AND manufacture > '2022-12-31';

-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1 | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE (city IN ('Indore', 'Pune', 'Delhi') AND price > 20000) AND stock != 0;

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 2 rows in set (0.00 sec)










mysql>  SELECT * FROM products1 WHERE category IN('Electronics', 'Furniture');

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP      | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          4 | Office Chair     | Furniture   | Ikea    | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 6 rows in set (0.00 sec)











mysql> SELECT * FROM products1 WHERE category IN ('Electronics', 'Clothing', 'Grocery');

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung    | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP         | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          6 | Cotton T-Shirt   | Clothing    | Puma       | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- |          7 | Running Shoes    | Clothing    | Nike       | Bhopal |  5000 |    30 |      5 | 2026-03-05  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |          9 | Cooking Oil 5L   | Grocery     | Fortune    | Mumbai |   800 |     0 |      4 | 2026-01-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung    | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 8 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE city NOT IN ('Indore', 'Bhopal');

-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand      | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- |          3 | Wireless Earbuds | Electronics | Sony       | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          4 | Office Chair     | Furniture   | Ikea       | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          5 | Study Table      | Furniture   | Ikea       | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          8 | Basmati Rice 5kg | Grocery     | India Gate | Pune   |   750 |   100 |      5 | 2025-07-10  |
-- |          9 | Cooking Oil 5L   | Grocery     | Fortune    | Mumbai |   800 |     0 |      4 | 2026-01-15  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung    | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+------------+--------+-------+-------+--------+-------------+
-- 6 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE brand NOT IN ('Samsung', 'LG', 'Sony');

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










mysql> SELECT * FROM products1 WHERE price BETWEEN 10000 AND 50000;

-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1 | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE stock BETWEEN 20 AND 60;

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP      | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          7 | Running Shoes    | Clothing    | Nike    | Bhopal |  5000 |    30 |      5 | 2026-03-05  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 4 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE rating BETWEEN 3 AND 5 AND price > 20000;

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP      | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE manufacture BETWEEN '2023-01-01' AND '2025-12-31' AND category IN ('Electronics', 'Furniture');

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          2 | Laptop Pro 14    | Electronics | HP      | Bhopal | 65000 |    20 |      5 | 2025-02-10  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 4 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE product_name LIKE 'S%';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE product_name LIKE '%phone%';

-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1 | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE brand LIKE '%a';

-- +------------+----------------+-----------+-------+--------+-------+-------+--------+-------------+
-- | product_id | product_name   | category  | brand | city   | price | stock | rating | manufacture |
-- +------------+----------------+-----------+-------+--------+-------+-------+--------+-------------+
-- |          4 | Office Chair   | Furniture | Ikea  | Mumbai |  8000 |     0 |      4 | 2022-06-12  |
-- |          5 | Study Table    | Furniture | Ikea  | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |          6 | Cotton T-Shirt | Clothing  | Puma  | Indore |  1500 |    70 |      4 | 2023-04-18  |
-- +------------+----------------+-----------+-------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE city IN ('Indore', 'Pune') AND price BETWEEN 20000 AND 70000 AND rating >= 4;

-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name  | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1 | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- +------------+---------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 1 row in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE category IN ('Electronics', 'Furniture') AND stock > 10 AND price < 60000 AND manufacture > '2022-12-31';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          3 | Wireless Earbuds | Electronics | Sony    | Pune   |  5000 |    60 |      4 | 2023-08-20  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)










mysql> SELECT * FROM products1 WHERE product_name LIKE '%a%' AND price NOT BETWEEN 10000 AND 50000 AND stock > 5;

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









mysql> SELECT * FROM products1 WHERE product_name LIKE 'S%' OR product_name LIKE 'M%' AND city NOT IN ('INDORE', 'Mumbai') AND price BETWEEN 15000 AND 80000 AND rating >= 4 AND manufacture > '2023-12-31';

-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- | product_id | product_name     | category    | brand   | city   | price | stock | rating | manufacture |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- |          1 | Smartphone X1    | Electronics | Samsung | Indore | 25000 |    45 |      4 | 2024-05-15  |
-- |          5 | Study Table      | Furniture   | Ikea    | Delhi  |  8000 |    15 |      5 | 2024-01-25  |
-- |         10 | Smart TV 55 Inch | Electronics | Samsung | Delhi  | 65000 |    10 |      5 | 2026-04-20  |
-- +------------+------------------+-------------+---------+--------+-------+-------+--------+-------------+
-- 3 rows in set (0.00 sec)