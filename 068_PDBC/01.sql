mysql> CREATE TABLE customer_order_pdbc( customer_id INT PRIMARY KEY, customer_name VARCHAR(60), city VARCHAR(40), email VARCHAR(80));
Query OK, 0 rows affected (0.07 sec)

mysql> DESC customer_order_pdbc;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | int         | NO   | PRI | NULL    |       |
| customer_name | varchar(60) | YES  |     | NULL    |       |
| city          | varchar(40) | YES  |     | NULL    |       |
| email         | varchar(80) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> INSERT INTO customer_order_pdbc VALUES
    -> (1, 'Amit', 'Indore', 'amit@gmail.com'),
    -> (2, 'Priya', 'Bhopal', 'priya@gmail.com'),
    -> (3, 'Rahul', 'Indore', 'rahul@gmail.com'),
    -> (4, 'Neha', 'Ujjain', 'neha@gmail.com'),
    -> (5, 'Karan', 'Dewas', 'karan@gmail.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customer_order_pdbc;
+-------------+---------------+--------+-----------------+
| customer_id | customer_name | city   | email           |
+-------------+---------------+--------+-----------------+
|           1 | Amit          | Indore | amit@gmail.com  |
|           2 | Priya         | Bhopal | priya@gmail.com |
|           3 | Rahul         | Indore | rahul@gmail.com |
|           4 | Neha          | Ujjain | neha@gmail.com  |
|           5 | Karan         | Dewas  | karan@gmail.com |
+-------------+---------------+--------+-----------------+
5 rows in set (0.00 sec)














mysql> CREATE TABLE product_order_pdbc( product_id INT PRIMARY KEY, product_name VARCHAR(80), category VARCHAR(40), price DECIMAL(10,2), stock INT);
Query OK, 0 rows affected (0.02 sec)


mysql> DESC customer_order_pdbc;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | int         | NO   | PRI | NULL    |       |
| customer_name | varchar(60) | YES  |     | NULL    |       |
| city          | varchar(40) | YES  |     | NULL    |       |
| email         | varchar(80) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)


mysql> INSERT INTO product_order_pdbc VALUES
    ->   (101, 'Laptop', 'Electronics', 55000.00 ,  10),
    -> (102, 'Mouse', 'Electronics', 800.00 ,  50),
    -> (103, 'Keyboard', 'Electronics', 1500.00 ,  30),
    -> (104, 'Notebook', 'Stationery', 100.00 , 100),
    -> (105, 'Monitor', 'Electronics', 12000.00 , 15),
    -> (106, 'Pen', 'Stationery', 20.00,  200);
Query OK, 6 rows affected (0.00 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM product_order_pdbc;
+------------+--------------+-------------+----------+-------+
| product_id | product_name | category    | price    | stock |
+------------+--------------+-------------+----------+-------+
|        101 | Laptop       | Electronics | 55000.00 |    10 |
|        102 | Mouse        | Electronics |   800.00 |    50 |
|        103 | Keyboard     | Electronics |  1500.00 |    30 |
|        104 | Notebook     | Stationery  |   100.00 |   100 |
|        105 | Monitor      | Electronics | 12000.00 |    15 |
|        106 | Pen          | Stationery  |    20.00 |   200 |
+------------+--------------+-------------+----------+-------+
6 rows in set (0.00 sec)










mysql> CREATE TABLE customer_order_details( order_id INT PRIMARY KEY, customer_id INT, product_id INT, quantity INT, order_status VARCHAR(30), CONSTRAINT customer_order_details_customer_order_pdbc FOREIGN KEY(customer_id) REFERENCES customer_order_pdbc(customer_id), CONSTRAINT customer_order_details_product_order_pdbc FOREIGN KEY(product_id) REFERENCES product_order_pdbc(product_id));
Query OK, 0 rows affected (0.06 sec)

mysql> DESC customer_order_details;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| order_id     | int         | NO   | PRI | NULL    |       |
| customer_id  | int         | YES  | MUL | NULL    |       |
| product_id   | int         | YES  | MUL | NULL    |       |
| quantity     | int         | YES  |     | NULL    |       |
| order_status | varchar(30) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO customer_order_details VALUES
    -> (1001, 1, 101, 1 , 'Delivered'),
    -> (1002, 1, 102, 2 , 'Delivered'),
    -> (1003, 2, 103, 1 , 'Shipped'),
    -> (1004, 3, 105, 2 , 'Delivered'),
    -> (1005, 3, 104, 5 , 'Pending'),
    -> (1006, 4, 101, 1 , 'Pending'),
    -> (1007, 5, 106, 10, 'Delivered');
Query OK, 7 rows affected (0.00 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customer_order_details;
+----------+-------------+------------+----------+--------------+
| order_id | customer_id | product_id | quantity | order_status |
+----------+-------------+------------+----------+--------------+
|     1001 |           1 |        101 |        1 | Delivered    |
|     1002 |           1 |        102 |        2 | Delivered    |
|     1003 |           2 |        103 |        1 | Shipped      |
|     1004 |           3 |        105 |        2 | Delivered    |
|     1005 |           3 |        104 |        5 | Pending      |
|     1006 |           4 |        101 |        1 | Pending      |
|     1007 |           5 |        106 |       10 | Delivered    |
+----------+-------------+------------+----------+--------------+
7 rows in set (0.00 sec)