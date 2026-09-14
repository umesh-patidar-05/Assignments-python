`
Assignment 5:
 Customer and Orders
Problem Statement:
A retail store wants to generate a report displaying all customers and their latest order details. The report should include customers who have not placed any orders.

Tables:
Customer (cust_id, cust_name)
Orders (order_id, cust_id, order_date, total_amount)
Query 1:
Write an SQL query using LEFT JOIN to display all customers with their order details, ensuring that customers with no orders are still included in the result.

Query 2:
Problem Statement:
The store wants to generate a report including all orders placed, even if the customer record is missing (i.e., orphan orders due to data inconsistency).

Query 3:
The store wants a comprehensive report showing all customers and all orders, even if some customers have no orders and some orders have missing customer details.

Query 4:
Problem Statement:
The store wants to analyze all possible customer-order pairings, regardless of actual transactions.
`







mysql> CREATE TABLE customer( cust_id INT PRIMARY KEY, cust_name VARCHAR(20));

-- Query OK, 0 rows affected (1.06 sec)



mysql> DESC customer;

-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | cust_id   | int         | NO   | PRI | NULL    |       |
-- | cust_name | varchar(20) | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)



mysql> CREATE TABLE orders( order_id INT PRIMARY KEY, cust_id INT, order_date DATE, total_amount DECIMAL(10,2));

-- Query OK, 0 rows affected (0.38 sec)



mysql> DESC orders;

-- +--------------+---------------+------+-----+---------+-------+
-- | Field        | Type          | Null | Key | Default | Extra |
-- +--------------+---------------+------+-----+---------+-------+
-- | order_id     | int           | NO   | PRI | NULL    |       |
-- | cust_id      | int           | YES  |     | NULL    |       |
-- | order_date   | date          | YES  |     | NULL    |       |
-- | total_amount | decimal(10,2) | YES  |     | NULL    |       |
-- +--------------+---------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)



mysql> INSERT INTO customer (cust_id, cust_name)
    -> VALUES
    -> (1, 'Aman'),
    -> (2, 'Riya'),
    -> (3, 'Vikas'),
    -> (4, 'Neha'),
    -> (5, 'Pooja');

-- Query OK, 5 rows affected (0.10 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM customer;

-- +---------+-----------+
-- | cust_id | cust_name |
-- +---------+-----------+
-- |       1 | Aman      |
-- |       2 | Riya      |
-- |       3 | Vikas     |
-- |       4 | Neha      |
-- |       5 | Pooja     |
-- +---------+-----------+
-- 5 rows in set (0.00 sec)



mysql> INSERT INTO orders (order_id, cust_id, order_date, total_amount)
    -> VALUES
    -> (101, 1, '2026-09-01', 2500.00),
    -> (102, 1, '2026-09-10', 1800.00),
    -> (103, 2, '2026-09-05', 3200.00),
    -> (104, 3, '2026-09-08', 1500.00),
    -> (105, 10, '2026-09-12', 4500.00);

-- Query OK, 5 rows affected (0.11 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM customer;

-- +---------+-----------+
-- | cust_id | cust_name |
-- +---------+-----------+
-- |       1 | Aman      |
-- |       2 | Riya      |
-- |       3 | Vikas     |
-- |       4 | Neha      |
-- |       5 | Pooja     |
-- +---------+-----------+
-- 5 rows in set (0.00 sec)



mysql> SELECT c.cust_name, o.order_id, o.order_date, o.total_amount FROM customer AS c LEFT JOIN orders AS o ON c.cust_id =  o.cust_id;

-- +-----------+----------+------------+--------------+
-- | cust_name | order_id | order_date | total_amount |
-- +-----------+----------+------------+--------------+
-- | Aman      |      102 | 2026-09-10 |      1800.00 |
-- | Aman      |      101 | 2026-09-01 |      2500.00 |
-- | Riya      |      103 | 2026-09-05 |      3200.00 |
-- | Vikas     |      104 | 2026-09-08 |      1500.00 |
-- | Neha      |     NULL | NULL       |         NULL |
-- | Pooja     |     NULL | NULL       |         NULL |
-- +-----------+----------+------------+--------------+
-- 6 rows in set (0.00 sec)



mysql> SELECT c.cust_name, o.order_id, o.order_date, o.total_amount FROM customer AS c RIGHT JOIN orders AS o ON c.cust_id =  o.cust_id;

-- +-----------+----------+------------+--------------+
-- | cust_name | order_id | order_date | total_amount |
-- +-----------+----------+------------+--------------+
-- | Aman      |      101 | 2026-09-01 |      2500.00 |
-- | Aman      |      102 | 2026-09-10 |      1800.00 |
-- | Riya      |      103 | 2026-09-05 |      3200.00 |
-- | Vikas     |      104 | 2026-09-08 |      1500.00 |
-- | NULL      |      105 | 2026-09-12 |      4500.00 |
-- +-----------+----------+------------+--------------+
-- 5 rows in set (0.00 sec)



mysql> SELECT c.cust_name, o.order_id, o.order_date, o.total_amount FROM customer AS c LEFT JOIN orders AS o ON c.cust_id =  o.cust_id UNION SELECT c.cust_name, o.order_id, o.order_date, o.total_amount FROM customer AS c RIGHT JOIN orders AS o ON c.cust_id =  o.cust_id;

-- +-----------+----------+------------+--------------+
-- | cust_name | order_id | order_date | total_amount |
-- +-----------+----------+------------+--------------+
-- | Aman      |      102 | 2026-09-10 |      1800.00 |
-- | Aman      |      101 | 2026-09-01 |      2500.00 |
-- | Riya      |      103 | 2026-09-05 |      3200.00 |
-- | Vikas     |      104 | 2026-09-08 |      1500.00 |
-- | Neha      |     NULL | NULL       |         NULL |
-- | Pooja     |     NULL | NULL       |         NULL |
-- | NULL      |      105 | 2026-09-12 |      4500.00 |
-- +-----------+----------+------------+--------------+
-- 7 rows in set (0.00 sec)



mysql> SELECT c.cust_name, o.order_id, o.order_date, o.total_amount FROM customer AS c CROSS JOIN orders AS o;

-- +-----------+----------+------------+--------------+
-- | cust_name | order_id | order_date | total_amount |
-- +-----------+----------+------------+--------------+
-- | Pooja     |      101 | 2026-09-01 |      2500.00 |
-- | Neha      |      101 | 2026-09-01 |      2500.00 |
-- | Vikas     |      101 | 2026-09-01 |      2500.00 |
-- | Riya      |      101 | 2026-09-01 |      2500.00 |
-- | Aman      |      101 | 2026-09-01 |      2500.00 |
-- | Pooja     |      102 | 2026-09-10 |      1800.00 |
-- | Neha      |      102 | 2026-09-10 |      1800.00 |
-- | Vikas     |      102 | 2026-09-10 |      1800.00 |
-- | Riya      |      102 | 2026-09-10 |      1800.00 |
-- | Aman      |      102 | 2026-09-10 |      1800.00 |
-- | Pooja     |      103 | 2026-09-05 |      3200.00 |
-- | Neha      |      103 | 2026-09-05 |      3200.00 |
-- | Vikas     |      103 | 2026-09-05 |      3200.00 |
-- | Riya      |      103 | 2026-09-05 |      3200.00 |
-- | Aman      |      103 | 2026-09-05 |      3200.00 |
-- | Pooja     |      104 | 2026-09-08 |      1500.00 |
-- | Neha      |      104 | 2026-09-08 |      1500.00 |
-- | Vikas     |      104 | 2026-09-08 |      1500.00 |
-- | Riya      |      104 | 2026-09-08 |      1500.00 |
-- | Aman      |      104 | 2026-09-08 |      1500.00 |
-- | Pooja     |      105 | 2026-09-12 |      4500.00 |
-- | Neha      |      105 | 2026-09-12 |      4500.00 |
-- | Vikas     |      105 | 2026-09-12 |      4500.00 |
-- | Riya      |      105 | 2026-09-12 |      4500.00 |
-- | Aman      |      105 | 2026-09-12 |      4500.00 |
-- +-----------+----------+------------+--------------+
-- 25 rows in set (0.00 sec)
