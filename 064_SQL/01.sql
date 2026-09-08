`
QNO 1:
table sales
=========================================================
| Column         | Data Type                               |
| -------------- | --------------------------------------- |
| sale_id        | INT                                     |
| customer_name  | VARCHAR(50)                             |
| city           | VARCHAR(30)                             |
| category       | VARCHAR(30)                             |
| product        | VARCHAR(50)                             |
| quantity       | INT                                     |
| price          | DECIMAL(10,2)                           |
| discount       | DECIMAL(10,2)                           |
| sale_date      | DATE                                    |
| payment_method | ENUM('UPI','Card','Cash','Net Banking') |
| status         | ENUM('Completed','Pending','Cancelled') |
| customer_type  | ENUM('New','Regular','Premium')         |
=========================================================


INSERT INTO sales
(customer_name, city, category, product, quantity, price, discount, sale_date, payment_method, status, customer_type)
VALUES
('Rahul','Indore','Electronics','Laptop',2,60000,5000,'2026-01-05','Card','Completed','Premium'),
('Priya','Bhopal','Electronics','Mobile',3,25000,3000,'2026-01-07','UPI','Completed','Regular'),
('Amit','Indore','Clothing','Jeans',5,2000,500,'2026-01-10','Cash','Completed','New'),
('Sneha','Mumbai','Beauty','Cream',8,800,400,'2026-01-12','UPI','Completed','Premium'),
('Rohit','Pune','Electronics','Laptop',1,55000,4000,'2026-01-15','Card','Completed','Regular'),
('Neha','Delhi','Clothing','Kurti',6,1800,600,'2026-01-17','UPI','Completed','Premium'),
('Karan','Indore','Sports','Bat',4,3500,700,'2026-01-20','Cash','Completed','Regular'),
('Pooja','Bhopal','Beauty','Lipstick',10,600,300,'2026-01-22','UPI','Completed','New'),
('Vikas','Delhi','Books','SQL Book',7,900,200,'2026-01-25','Net Banking','Completed','Regular'),
('Anjali','Mumbai','Electronics','Watch',3,7000,800,'2026-01-27','Card','Completed','Premium'),
('Saurabh','Pune','Grocery','Rice',12,900,500,'2026-02-01','UPI','Completed','Regular'),
('Riya','Delhi','Electronics','AC',2,45000,5000,'2026-02-03','Card','Completed','Premium'),
('Manish','Indore','Clothing','Shirt',6,1500,300,'2026-02-05','UPI','Completed','New'),
('Komal','Bhopal','Furniture','Chair',3,8000,1000,'2026-02-07','Cash','Completed','Premium'),
('Deepak','Mumbai','Electronics','Speaker',5,3000,500,'2026-02-12','Card','Cancelled','Regular');




Questions===>



Find the total number of completed sales for each city where quantity is greater than 2. Display cities in descending order of sales count.

Find the total quantity sold for each category where discount is greater than 300. Display highest quantity first.

Find the total sales amount for each city for completed sales only. Display highest-selling city first.

Find the average product price for each category where quantity is at least 3. Display categories by average price descending.

Find the number of sales for each customer type where the order amount (quantity * price) is greater than 5000. Sort by number of sales descending.

Find the total discount given for each city for UPI transactions. Display highest discount first.

Find the total quantity sold through each payment method for completed transactions. Sort by total quantity descending.

Find the average discount for each category where quantity is greater than 4. Display highest average discount first.

Find the maximum product price for each city where the status is Completed. Sort by maximum price descending.

Find the minimum product price for each category where discount is greater than 300. Sort by minimum price ascending.

Find cities having more than 2 completed sales. Sort cities by completed sales count descending.

Find categories having total quantity greater than 10. Sort by total quantity descending.

Find cities having total sales greater than 50,000. Sort by total sales descending.

Find customer types having average product price greater than 10,000. Sort by average price descending.

Find categories having average discount greater than 400. Sort by average discount descending.

Find payment methods having more than 2 completed transactions. Sort by transaction count descending.

Find cities where the maximum product price is greater than 20,000. Sort by maximum price descending.

Find categories where the minimum product price is less than 2,000. Sort by minimum price ascending.

Find customer types where total discount is greater than 2,000. Sort by total discount descending.

Find cities where average quantity per transaction is greater than 4. Sort by average quantity descending.

Find each city’s total sales for completed UPI transactions where quantity is greater than 2. Display only cities having total sales greater than 10,000.

Find each category’s total quantity for completed transactions where discount is greater than 300. Display only categories having total quantity greater than 5.

Find each customer type’s average price for completed transactions where quantity >= 2. Display only customer types whose average price exceeds 10,000.

Find each city’s total discount for UPI transactions where quantity > 3. Display cities having total discount greater than 500.

Find each category’s total sales where payment method is UPI or Card and status is Completed. Display categories having total sales greater than 10,000.

Find each city’s transaction count for January 2026 completed transactions. Display cities having at least 2 transactions.

Find each category’s average sales amount where quantity >= 3 and status = Completed. Display categories whose average sales amount is greater than 5,000.

Find each customer type’s maximum price where payment method is Card and status is Completed. Display only customer types whose maximum price exceeds 20,000.

Find each city’s total quantity for Electronics and Clothing products where status is Completed. Display cities having total quantity greater than 5.

Find each payment method’s total sales where status is Completed and discount is greater than 400. Display payment methods having total sales greater than 20,000.

Find cities having more than 2 completed transactions and total sales greater than 50,000. Sort by total sales descending.

Find categories having total quantity greater than 8 and average price greater than 2,000. Sort by total quantity descending.

Find customer types having more than 2 transactions and total discount greater than 2,000. Sort by total discount descending.

Find cities having average quantity greater than 3 and maximum product price greater than 20,000. Sort by average quantity descending.

Find categories having more than 2 completed transactions and total sales greater than 20,000. Sort by total sales descending.

Find payment methods having more than 2 completed transactions and average price greater than 10,000. Sort by average price descending.

Find cities having total quantity greater than 8 and average discount greater than 300. Sort by total quantity descending.

Find customer types having average price greater than 5,000 and total quantity greater than 8. Sort by total quantity descending.

Find categories having minimum price below 2,000 and maximum price above 20,000. Sort by maximum price descending.

Find cities having total discount greater than 1,000 and total sales greater than 30,000. Sort by total sales descending.

Find the top 3 cities based on total sales, considering only completed transactions with quantity greater than 1 and displaying only cities having more than 1 transaction.

Find the top 3 categories based on total quantity where discount is greater than 300 and total quantity is greater than 5.

Find the top 3 customer types based on average sales amount where status is Completed and transaction count is greater than 1.

Find the top 3 cities based on total discount for UPI transactions where status is Completed and total discount is greater than 500.

Find the top 3 categories based on total sales where quantity is greater than 2, average price is greater than 1,000, and total sales exceeds 10,000.

Find the top 3 cities based on average order value where status is Completed, total quantity is greater than 5, and transaction count is greater than 1.

Find the second-highest city based on total sales after considering only completed transactions and cities having at least 2 transactions.

Find the third-highest category based on total quantity where quantity is greater than 2 and total discount exceeds 500.

Find the 2nd and 3rd highest customer types based on total sales where status is Completed and average price is greater than 5,000.

Find the top 3 cities where:

status is Completed

payment method is UPI or Card

quantity is greater than 1

number of transactions is greater than 1

total quantity is greater than 5

total sales is greater than 20,000
`



























































mysql> CREATE TABLE sales( sale_id INT PRIMARY KEY AUTO_INCREMENT,
    -> customer_name VARCHAR(50),
    -> city VARCHAR(30),
    -> category VARCHAR(30),
    -> product VARCHAR(50),
    -> quantity INT,
    -> price DECIMAL(10,2),
    -> discount DECIMAL(10,2),
    -> sale_date DATE,
    -> payment_method ENUM('UPI','Card','Cash','Net Banking'),
    -> status ENUM('Completed','Pending','Cancelled'),
    -> customer_type ENUM('New','Regular','Premium')
    -> );
Query OK, 0 rows affected (0.49 sec)

mysql> DESC sales;
+----------------+-----------------------------------------+------+-----+---------+----------------+
| Field          | Type                                    | Null | Key | Default | Extra          |
+----------------+-----------------------------------------+------+-----+---------+----------------+
| sale_id        | int                                     | NO   | PRI | NULL    | auto_increment |
| customer_name  | varchar(50)                             | YES  |     | NULL    |                |
| city           | varchar(30)                             | YES  |     | NULL    |                |
| category       | varchar(30)                             | YES  |     | NULL    |                |
| product        | varchar(50)                             | YES  |     | NULL    |                |
| quantity       | int                                     | YES  |     | NULL    |                |
| price          | decimal(10,2)                           | YES  |     | NULL    |                |
| discount       | decimal(10,2)                           | YES  |     | NULL    |                |
| sale_date      | date                                    | YES  |     | NULL    |                |
| payment_method | enum('UPI','Card','Cash','Net Banking') | YES  |     | NULL    |                |
| status         | enum('Completed','Pending','Cancelled') | YES  |     | NULL    |                |
| customer_type  | enum('New','Regular','Premium')         | YES  |     | NULL    |                |
+----------------+-----------------------------------------+------+-----+---------+----------------+
12 rows in set (0.01 sec)

mysql> INSERT INTO sales( customer_name, city, category, product, quantity, price, discount, sale_date, payment_method, status, customer_type)
    -> VALUES
    -> ('Rahul','Indore','Electronics','Laptop',2,60000,5000,'2026-01-05','Card','Completed','Premium'),
    -> ('Priya','Bhopal','Electronics','Mobile',3,25000,3000,'2026-01-07','UPI','Completed','Regular'),
    -> ('Amit','Indore','Clothing','Jeans',5,2000,500,'2026-01-10','Cash','Completed','New'),
    -> ('Sneha','Mumbai','Beauty','Cream',8,800,400,'2026-01-12','UPI','Completed','Premium'),
    -> ('Rohit','Pune','Electronics','Laptop',1,55000,4000,'2026-01-15','Card','Completed','Regular'),
    -> ('Neha','Delhi','Clothing','Kurti',6,1800,600,'2026-01-17','UPI','Completed','Premium'),
    -> ('Karan','Indore','Sports','Bat',4,3500,700,'2026-01-20','Cash','Completed','Regular'),
    -> ('Pooja','Bhopal','Beauty','Lipstick',10,600,300,'2026-01-22','UPI','Completed','New'),
    -> ('Vikas','Delhi','Books','SQL Book',7,900,200,'2026-01-25','Net Banking','Completed','Regular'),
    -> ('Anjali','Mumbai','Electronics','Watch',3,7000,800,'2026-01-27','Card','Completed','Premium'),
    -> ('Saurabh','Pune','Grocery','Rice',12,900,500,'2026-02-01','UPI','Completed','Regular'),
    -> ('Riya','Delhi','Electronics','AC',2,45000,5000,'2026-02-03','Card','Completed','Premium'),
    -> ('Manish','Indore','Clothing','Shirt',6,1500,300,'2026-02-05','UPI','Completed','New'),
    -> ('Komal','Bhopal','Furniture','Chair',3,8000,1000,'2026-02-07','Cash','Completed','Premium'),
    -> ('Deepak','Mumbai','Electronics','Speaker',5,3000,500,'2026-02-12','Card','Cancelled','Regular');
Query OK, 15 rows affected (0.09 sec)
Records: 15  Duplicates: 0  Warnings: 0

mysql> DESC sales;
+----------------+-----------------------------------------+------+-----+---------+----------------+
| Field          | Type                                    | Null | Key | Default | Extra          |
+----------------+-----------------------------------------+------+-----+---------+----------------+
| sale_id        | int                                     | NO   | PRI | NULL    | auto_increment |
| customer_name  | varchar(50)                             | YES  |     | NULL    |                |
| city           | varchar(30)                             | YES  |     | NULL    |                |
| category       | varchar(30)                             | YES  |     | NULL    |                |
| product        | varchar(50)                             | YES  |     | NULL    |                |
| quantity       | int                                     | YES  |     | NULL    |                |
| price          | decimal(10,2)                           | YES  |     | NULL    |                |
| discount       | decimal(10,2)                           | YES  |     | NULL    |                |
| sale_date      | date                                    | YES  |     | NULL    |                |
| payment_method | enum('UPI','Card','Cash','Net Banking') | YES  |     | NULL    |                |
| status         | enum('Completed','Pending','Cancelled') | YES  |     | NULL    |                |
| customer_type  | enum('New','Regular','Premium')         | YES  |     | NULL    |                |
+----------------+-----------------------------------------+------+-----+---------+----------------+
12 rows in set (0.00 sec)

mysql> SELECT * FROM sales;
+---------+---------------+--------+-------------+----------+----------+----------+----------+------------+----------------+-----------+---------------+
| sale_id | customer_name | city   | category    | product  | quantity | price    | discount | sale_date  | payment_method | status    | customer_type |
+---------+---------------+--------+-------------+----------+----------+----------+----------+------------+----------------+-----------+---------------+
|       1 | Rahul         | Indore | Electronics | Laptop   |        2 | 60000.00 |  5000.00 | 2026-01-05 | Card           | Completed | Premium       |
|       2 | Priya         | Bhopal | Electronics | Mobile   |        3 | 25000.00 |  3000.00 | 2026-01-07 | UPI            | Completed | Regular       |
|       3 | Amit          | Indore | Clothing    | Jeans    |        5 |  2000.00 |   500.00 | 2026-01-10 | Cash           | Completed | New           |
|       4 | Sneha         | Mumbai | Beauty      | Cream    |        8 |   800.00 |   400.00 | 2026-01-12 | UPI            | Completed | Premium       |
|       5 | Rohit         | Pune   | Electronics | Laptop   |        1 | 55000.00 |  4000.00 | 2026-01-15 | Card           | Completed | Regular       |
|       6 | Neha          | Delhi  | Clothing    | Kurti    |        6 |  1800.00 |   600.00 | 2026-01-17 | UPI            | Completed | Premium       |
|       7 | Karan         | Indore | Sports      | Bat      |        4 |  3500.00 |   700.00 | 2026-01-20 | Cash           | Completed | Regular       |
|       8 | Pooja         | Bhopal | Beauty      | Lipstick |       10 |   600.00 |   300.00 | 2026-01-22 | UPI            | Completed | New           |
|       9 | Vikas         | Delhi  | Books       | SQL Book |        7 |   900.00 |   200.00 | 2026-01-25 | Net Banking    | Completed | Regular       |
|      10 | Anjali        | Mumbai | Electronics | Watch    |        3 |  7000.00 |   800.00 | 2026-01-27 | Card           | Completed | Premium       |
|      11 | Saurabh       | Pune   | Grocery     | Rice     |       12 |   900.00 |   500.00 | 2026-02-01 | UPI            | Completed | Regular       |
|      12 | Riya          | Delhi  | Electronics | AC       |        2 | 45000.00 |  5000.00 | 2026-02-03 | Card           | Completed | Premium       |
|      13 | Manish        | Indore | Clothing    | Shirt    |        6 |  1500.00 |   300.00 | 2026-02-05 | UPI            | Completed | New           |
|      14 | Komal         | Bhopal | Furniture   | Chair    |        3 |  8000.00 |  1000.00 | 2026-02-07 | Cash           | Completed | Premium       |
|      15 | Deepak        | Mumbai | Electronics | Speaker  |        5 |  3000.00 |   500.00 | 2026-02-12 | Card           | Cancelled | Regular       |
+---------+---------------+--------+-------------+----------+----------+----------+----------+------------+----------------+-----------+---------------+
15 rows in set (0.00 sec)






mysql> SELECT city, COUNT(*) FROM sales WHERE status = 'completed' AND quantity > 2 GROUP BY city ORDER BY COUNT(*) DESC;

-- +--------+----------+
-- | city   | COUNT(*) |
-- +--------+----------+
-- | Bhopal |        3 |
-- | Indore |        3 |
-- | Mumbai |        2 |
-- | Delhi  |        2 |
-- | Pune   |        1 |
-- +--------+----------+
-- 5 rows in set (0.00 sec)




mysql> SELECT category, SUM(quantity) FROM sales WHERE discount > 300 GROUP BY category ORDER BY SUM(quantity) DESC;

-- +-------------+---------------+
-- | category    | SUM(quantity) |
-- +-------------+---------------+
-- | Electronics |            16 |
-- | Grocery     |            12 |
-- | Clothing    |            11 |
-- | Beauty      |             8 |
-- | Sports      |             4 |
-- | Furniture   |             3 |
-- +-------------+---------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT city, SUM(price) FROM sales WHERE status = 'completed' GROUP BY city ORDER BY SUM(price) DESC;

-- +--------+------------+
-- | city   | SUM(price) |
-- +--------+------------+
-- | Indore |   67000.00 |
-- | Pune   |   55900.00 |
-- | Delhi  |   47700.00 |
-- | Bhopal |   33600.00 |
-- | Mumbai |    7800.00 |
-- +--------+------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT category, AVG(price) FROM sales WHERE quantity >= 3 GROUP BY category ORDER BY AVG(price) DESC;

-- +-------------+--------------+
-- | category    | AVG(price)   |
-- +-------------+--------------+
-- | Electronics | 11666.666667 |
-- | Furniture   |  8000.000000 |
-- | Sports      |  3500.000000 |
-- | Clothing    |  1766.666667 |
-- | Books       |   900.000000 |
-- | Grocery     |   900.000000 |
-- | Beauty      |   700.000000 |
-- +-------------+--------------+
-- 7 rows in set (0.00 sec)




mysql> SELECT customer_type, COUNT(*) FROM sales WHERE quantity * price > 5000 GROUP BY customer_type ORDER BY COUNT(*) DESC;

-- +---------------+----------+
-- | customer_type | COUNT(*) |
-- +---------------+----------+
-- | Premium       |        6 |
-- | Regular       |        6 |
-- | New           |        3 |
-- +---------------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT city, SUM(discount) FROM sales WHERE payment_method = 'UPI' GROUP BY city ORDER BY SUM(discount) DESC;

-- +--------+---------------+
-- | city   | SUM(discount) |
-- +--------+---------------+
-- | Bhopal |       3300.00 |
-- | Delhi  |        600.00 |
-- | Pune   |        500.00 |
-- | Mumbai |        400.00 |
-- | Indore |        300.00 |
-- +--------+---------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT payment_method, SUM(quantity) FROM sales WHERE status = 'completed' GROUP BY payment_method ORDER BY SUM(quantity) DESC;

-- +----------------+---------------+
-- | payment_method | SUM(quantity) |
-- +----------------+---------------+
-- | UPI            |            45 |
-- | Cash           |            12 |
-- | Card           |             8 |
-- | Net Banking    |             7 |
-- +----------------+---------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT category, AVG(discount) FROM sales WHERE quantity > 4 GROUP BY category ORDER BY AVG(discount) DESC;

-- +-------------+---------------+
-- | category    | AVG(discount) |
-- +-------------+---------------+
-- | Grocery     |    500.000000 |
-- | Electronics |    500.000000 |
-- | Clothing    |    466.666667 |
-- | Beauty      |    350.000000 |
-- | Books       |    200.000000 |
-- +-------------+---------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT city, MAX(price) FROM sales WHERE status = 'completed' GROUP BY city ORDER BY MAX(price) DESC;

-- +--------+------------+
-- | city   | MAX(price) |
-- +--------+------------+
-- | Indore |   60000.00 |
-- | Pune   |   55000.00 |
-- | Delhi  |   45000.00 |
-- | Bhopal |   25000.00 |
-- | Mumbai |    7000.00 |
-- +--------+------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT category, MIN(price) FROM sales WHERE discount > 300 GROUP BY category ORDER BY MIN(price);

-- +-------------+------------+
-- | category    | MIN(price) |
-- +-------------+------------+
-- | Beauty      |     800.00 |
-- | Grocery     |     900.00 |
-- | Clothing    |    1800.00 |
-- | Electronics |    3000.00 |
-- | Sports      |    3500.00 |
-- | Furniture   |    8000.00 |
-- +-------------+------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT city, COUNT(*) FROM sales GROUP BY city HAVING COUNT(*) > 2 ORDER BY COUNT(*) DESC;

-- +--------+----------+
-- | city   | COUNT(*) |
-- +--------+----------+
-- | Indore |        4 |
-- | Bhopal |        3 |
-- | Mumbai |        3 |
-- | Delhi  |        3 |
-- +--------+----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT category, SUM(quantity) FROM sales GROUP BY category HAVING SUM(quantity) > 10 ORDER BY SUM(quantity) DESC;

-- +-------------+---------------+
-- | category    | SUM(quantity) |
-- +-------------+---------------+
-- | Beauty      |            18 |
-- | Clothing    |            17 |
-- | Electronics |            16 |
-- | Grocery     |            12 |
-- +-------------+---------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT city, SUM(quantity * price) AS total FROM sales GROUP BY city HAVING total > 50000 

+--------+-----------+
| city   | total     |
+--------+-----------+
| Indore | 153000.00 |
| Pune   |  65800.00 |
| Delhi  | 107100.00 |
| Bhopal | 105000.00 |
+--------+-----------+
4 rows in set (0.00 sec)





mysql> SELECT customer_type, AVG(price) FROM sales GROUP BY customer_type HAVING AVG(price) > 10000 ORDER BY AVG(price) DESC;

-- +---------------+--------------+
-- | customer_type | AVG(price)   |
-- +---------------+--------------+
-- | Premium       | 20433.333333 |
-- | Regular       | 14716.666667 |
-- +---------------+--------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT category, AVG(discount) FROM sales GROUP BY category HAVING AVG(discount) > 400 ORDER BY AVG(discount) DESC;

-- +-------------+---------------+
-- | category    | AVG(discount) |
-- +-------------+---------------+
-- | Electronics |   3050.000000 |
-- | Furniture   |   1000.000000 |
-- | Sports      |    700.000000 |
-- | Grocery     |    500.000000 |
-- | Clothing    |    466.666667 |
-- +-------------+---------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT city, MAX(price) FROM sales GROUP BY city HAVING MAX(price) > 20000 ORDER BY MAX(price) DESC;

-- +--------+------------+
-- | city   | MAX(price) |
-- +--------+------------+
-- | Indore |   60000.00 |
-- | Pune   |   55000.00 |
-- | Delhi  |   45000.00 |
-- | Bhopal |   25000.00 |
-- +--------+------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT category, MIN(price) as minimum FROM sales GROUP BY category HAVING minimum < 2000 ORDER BY MIN(price) ASC;

-- +----------+---------+
-- | category | minimum |
-- +----------+---------+
-- | Beauty   |  600.00 |
-- | Books    |  900.00 |
-- | Grocery  |  900.00 |
-- | Clothing | 1500.00 |
-- +----------+---------+
-- 4 rows in set (0.01 sec)




mysql> SELECT customer_type, SUM(discount) AS total_discount FROM sales GROUP BY customer_type
HAVING total_discount > 2000 ORDER BY total_discount DESC;

-- +---------------+----------------+
-- | customer_type | total_discount |
-- +---------------+----------------+
-- | Premium       |       12800.00 |
-- | Regular       |        8900.00 |
-- +---------------+----------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT city, AVG(quantity) AS avg_quantity FROM sales GROUP BY city HAVING avg_quantity > 4 ORDER BY avg_quantity DESC;

-- +--------+--------------+
-- | city   | avg_quantity |
-- +--------+--------------+
-- | Pune   |       6.5000 |
-- | Bhopal |       5.3333 |
-- | Mumbai |       5.3333 |
-- | Delhi  |       5.0000 |
-- | Indore |       4.2500 |
-- +--------+--------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT city, SUM(quantity * price) AS total FROM sales WHERE payment_method = 'UPI' AND status = 'Completed' AND quantity > 2 GROUP BY city HAVING total > 10000;

-- +--------+----------+
-- | city   | total    |
-- +--------+----------+
-- | Bhopal | 81000.00 |
-- | Delhi  | 10800.00 |
-- | Pune   | 10800.00 |
-- +--------+----------+
-- 3 rows in set (0.01 sec)




mysql> SELECT category, SUM(quantity) FROM sales WHERE status = 'Completed' AND discount > 300 GROUP BY category HAVING SUM(quantity) > 5;

-- +-------------+---------------+
-- | category    | SUM(quantity) |
-- +-------------+---------------+
-- | Electronics |            11 |
-- | Clothing    |            11 |
-- | Beauty      |             8 |
-- | Grocery     |            12 |
-- +-------------+---------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT customer_type, AVG(price) FROM sales WHERE status = 'Completed' AND quantity >= 2 GROUP BY customer_type HAVING AVG(price) > 10000;

-- +---------------+--------------+
-- | customer_type | AVG(price)   |
-- +---------------+--------------+
-- | Premium       | 20433.333333 |
-- +---------------+--------------+
-- 1 row in set (0.00 sec)


mysql> SELECT city, SUM(discount) FROM sales WHERE payment_method = 'UPI' AND quantity > 3 GROUP BY city HAVING SUM(discount) > 500;

-- +-------+---------------+
-- | city  | SUM(discount) |
-- +-------+---------------+
-- | Delhi |        600.00 |
-- +-------+---------------+
-- 1 row in set (0.10 sec)




mysql> SELECT category, SUM(quantity * price) AS total FROM sales WHERE payment_method IN( 'UPI', 'Card') AND status = 'Completed' GROUP BY category HAVING total > 10000;

-- +-------------+-----------+
-- | category    | total     |
-- +-------------+-----------+
-- | Electronics | 361000.00 |
-- | Beauty      |  12400.00 |
-- | Clothing    |  19800.00 |
-- | Grocery     |  10800.00 |
-- +-------------+-----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT city, COUNT(*) FROM sales WHERE sale_date BETWEEN '2026-01-01' AND '2026-01-31' GROUP BY city HAVING COUNT(*) > 2;

-- +--------+----------+
-- | city   | COUNT(*) |
-- +--------+----------+
-- | Indore |        3 |
-- +--------+----------+
-- 1 row in set (0.00 sec)




mysql> SELECT category, AVG(quantity * price)  AS avg_sales FROM sales WHERE quantity >= 3 AND status = 'Completed' GROUP BY category HAVING avg_sales > 5000;

-- +-------------+--------------+
-- | category    | avg_sales    |
-- +-------------+--------------+
-- | Electronics | 48000.000000 |
-- | Clothing    |  9933.333333 |
-- | Beauty      |  6200.000000 |
-- | Sports      | 14000.000000 |
-- | Books       |  6300.000000 |
-- | Grocery     | 10800.000000 |
-- | Furniture   | 24000.000000 |
-- +-------------+--------------+
-- 7 rows in set (0.00 sec)




mysql> SELECT customer_type, MAX(price) FROM sales WHERE payment_method = 'Card' AND status = 'Completed' GROUP BY customer_type HAVING MAX(price) > 20000;

-- +---------------+------------+
-- | customer_type | MAX(price) |
-- +---------------+------------+
-- | Premium       |   60000.00 |
-- | Regular       |   55000.00 |
-- +---------------+------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT city, SUM(quantity) FROM sales WHERE category IN( 'Electronics' , 'Clothing') AND status = 'completed' GROUP BY city HAVING SUM(quantity) > 5;

-- +--------+---------------+
-- | city   | SUM(quantity) |
-- +--------+---------------+
-- | Indore |            13 |
-- | Delhi  |             8 |
-- +--------+---------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT payment_method, SUM(quantity* price) AS total FROM sales WHERE status = 'Completed' AND discount > 400 GROUP BY payment_method HAVING total > 20000;

-- +----------------+-----------+
-- | payment_method | total     |
-- +----------------+-----------+
-- | Card           | 286000.00 |
-- | UPI            |  96600.00 |
-- | Cash           |  48000.00 |
-- +----------------+-----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT city, COUNT(*) FROM sales WHERE status = 'Completed' AND (quantity * price) > 50000 GROUP BY city ORDER BY COUNT(*) DESC;

-- +--------+----------+
-- | city   | COUNT(*) |
-- +--------+----------+
-- | Indore |        1 |
-- | Bhopal |        1 |
-- | Pune   |        1 |
-- | Delhi  |        1 |
-- +--------+----------+
-- 4 rows in set (0.01 sec)




mysql> SELECT city, COUNT(*) FROM sales WHERE status = 'Completed' AND (quantity * price) > 50000 GROUP BY city HAVING COUNT(*) > 2 ORDER BY COUNT(*) DESC;

-- Empty set (0.00 sec)




mysql> SELECT city,COUNT(*), SUM(quantity * price) AS total  FROM sales WHERE status = 'Completed' GROUP BY city HAVING COUNT(*) > 2 AND total > 50000 ORDER BY total DESC;

-- +--------+----------+-----------+
-- | city   | COUNT(*) | total     |
-- +--------+----------+-----------+
-- | Indore |        4 | 153000.00 |
-- | Delhi  |        3 | 107100.00 |
-- | Bhopal |        3 | 105000.00 |
-- +--------+----------+-----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT category, SUM(quantity), AVG(price) FROM sales  GROUP BY category HAVING SUM(quantity) > 8 AND AVG(price) > 2000 ORDER BY SUM(quantity) DESC;

-- +-------------+---------------+--------------+
-- | category    | SUM(quantity) | AVG(price)   |
-- +-------------+---------------+--------------+
-- | Electronics |            16 | 32500.000000 |
-- +-------------+---------------+--------------+
-- 1 row in set (0.00 sec)




mysql> SELECT customer_type, COUNT(*) , SUM(discount) FROM sales GROUP BY customer_type HAVING COUNT(*) > 2 AND SUM(discount) > 2000 ORDER BY SUM(discount) DESC;

-- +---------------+----------+---------------+
-- | customer_type | COUNT(*) | SUM(discount) |
-- +---------------+----------+---------------+
-- | Premium       |        6 |      12800.00 |
-- | Regular       |        6 |       8900.00 |
-- +---------------+----------+---------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT city,  AVG(quantity), MAX(price)  FROM Sales GROUP BY city HAVING AVG(quantity) > 3 AND MAX(price) > 20000 ORDER BY AVG(quantity) DESC;

-- +--------+---------------+------------+
-- | city   | AVG(quantity) | MAX(price) |
-- +--------+---------------+------------+
-- | Pune   |        6.5000 |   55000.00 |
-- | Bhopal |        5.3333 |   25000.00 |
-- | Delhi  |        5.0000 |   45000.00 |
-- | Indore |        4.2500 |   60000.00 |
-- +--------+---------------+------------+
-- 4 rows in set (0.00 sec) 




mysql> SELECT category, COUNT(*), SUM(quantity * price) FROM  sales WHERE status = 'Completed' GROUP BY category HAVING SUM(quantity * price) > 20000 AND COUNT(*) > 2 ORDER BY SUM(quantity * price) DESC;

-- +-------------+----------+-----------------------+
-- | category    | COUNT(*) | SUM(quantity * price) |
-- +-------------+----------+-----------------------+
-- | Electronics |        5 |             361000.00 |
-- | Clothing    |        3 |              29800.00 |
-- +-------------+----------+-----------------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT payment_method, COUNT(*) , AVG(price) FROM sales WHERE status = 'Completed' GROUP BY payment_method HAVING COUNT(*) > 2 AND AVG(price) > 10000 ORDER BY AVG(price) DESC;

-- +----------------+----------+--------------+
-- | payment_method | COUNT(*) | AVG(price)   |
-- +----------------+----------+--------------+
-- | Card           |        4 | 41750.000000 |
-- +----------------+----------+--------------+
-- 1 row in set (0.00 sec)




mysql> SELECT city, SUM(quantity), AVG(discount) FROM sales GROUP BY city HAVING SUM(quantity) > 8 AND AVG(discount) > 300 ORDER BY SUM(quantity) DESC;

-- +--------+---------------+---------------+
-- | city   | SUM(quantity) | AVG(discount) |
-- +--------+---------------+---------------+
-- | Indore |            17 |   1625.000000 |
-- | Bhopal |            16 |   1433.333333 |
-- | Mumbai |            16 |    566.666667 |
-- | Delhi  |            15 |   1933.333333 |
-- | Pune   |            13 |   2250.000000 |
-- +--------+---------------+---------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT customer_type, AVG(quantity * price) , SUM(quantity) FROM sales GROUP BY customer_type HAVING AVG(quantity * price) > 5000 AND SUM(quantity) > 8 ORDER BY SUM(quantity) DESC;

-- +---------------+-----------------------+---------------+
-- | customer_type | AVG(quantity * price) | SUM(quantity) |
-- +---------------+-----------------------+---------------+
-- | Regular       |          29350.000000 |            32 |
-- | Premium       |          45366.666667 |            24 |
-- | New           |           8333.333333 |            21 |
-- +---------------+-----------------------+---------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT city, SUM(discount), SUM(quantity * price) AS total_sales FROM sales GROUP BY city HAVING SUM(discount) > 1000 AND total_sales > 30000 ORDER BY total_sales DESC;

-- +--------+---------------+-------------+
-- | city   | SUM(discount) | total_sales |
-- +--------+---------------+-------------+
-- | Indore |       6500.00 |   153000.00 |
-- | Delhi  |       5800.00 |   107100.00 |
-- | Bhopal |       4300.00 |   105000.00 |
-- | Pune   |       4500.00 |    65800.00 |
-- | Mumbai |       1700.00 |    42400.00 |
-- +--------+---------------+-------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT city, SUM(price * quantity) , COUNT(*)  FROM sales WHERE status = 'Completed'  AND quantity > 1 GROUP BY city HAVING COUNT(*) > 1 ORDER BY SUM(price * quantity) DESC  LIMIT 3;

-- +--------+-----------------------+----------+
-- | city   | SUM(price * quantity) | COUNT(*) |
-- +--------+-----------------------+----------+
-- | Indore |             153000.00 |        4 |
-- | Delhi  |             107100.00 |        3 |
-- | Bhopal |             105000.00 |        3 |
-- +--------+-----------------------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT category, SUM(quantity) FROM sales WHERE discount > 300 GROUP BY category HAVING SUM(quantity) > 5 ORDER BY SUM(quantity) DESC LIMIT 3;

-- +-------------+---------------+
-- | category    | SUM(quantity) |
-- +-------------+---------------+
-- | Electronics |            16 |
-- | Grocery     |            12 |
-- | Clothing    |            11 |
-- +-------------+---------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT customer_type, AVG(quantity * price), COUNT(*) FROM sales WHERE status = 'Completed' GROUP BY customer_type HAVING COUNT(*) > 1 ORDER BY AVG(quantity * price) DESC LIMIT 3;

-- +---------------+-----------------------+----------+
-- | customer_type | AVG(quantity * price) | COUNT(*) |
-- +---------------+-----------------------+----------+
-- | Premium       |          45366.666667 |        6 |
-- | Regular       |          32220.000000 |        5 |
-- | New           |           8333.333333 |        3 |
-- +---------------+-----------------------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT city,SUM(discount) FROM sales WHERE payment_method = 'UPI' AND status = 'Completed' GROUP BY city HAVING SUM(discount) > 500 ORDER BY SUM(discount) DESC LIMIT 3;

-- +--------+---------------+
-- | city   | SUM(discount) |
-- +--------+---------------+
-- | Bhopal |       3300.00 |
-- | Delhi  |        600.00 |
-- +--------+---------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT category, SUM(quantity * price), AVG(price) FROM sales WHERE quantity > 2 GROUP BY category HAVING AVG(price) > 1000 AND SUM(quantity * price) > 10000 ORDER BY SUM(quantity * price) DESC LIMIT 3;

-- +-------------+-----------------------+--------------+
-- | category    | SUM(quantity * price) | AVG(price)   |
-- +-------------+-----------------------+--------------+
-- | Electronics |             111000.00 | 11666.666667 |
-- | Clothing    |              29800.00 |  1766.666667 |
-- | Furniture   |              24000.00 |  8000.000000 |
-- +-------------+-----------------------+--------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT city, SUM(quantity), COUNT(*) FROM sales WHERE status = 'Completed' GROUP BY city HAVING SUM(quantity) > 5 AND COUNT(*) > 1 ORDER BY AVG(quantity) DESC LIMIT 3;

-- +--------+---------------+---------------+----------+
-- | city   | AVG(quantity) | SUM(quantity) | COUNT(*) |
-- +--------+---------------+---------------+----------+
-- | Pune   |        6.5000 |            13 |        2 |
-- | Mumbai |        5.5000 |            11 |        2 |
-- | Bhopal |        5.3333 |            16 |        3 |
-- +--------+---------------+---------------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT city, SUM(quantity * price), COUNT(*) FROM sales WHERE status= 'Completed' GROUP BY city HAVING COUNT(*) >= 2 ORDER BY SUM(quantity * price) DESC LIMIT 1 OFFSET 1;

-- +-------+-----------------------+----------+
-- | city  | SUM(quantity * price) | COUNT(*) |
-- +-------+-----------------------+----------+
-- | Delhi |             107100.00 |        3 |
-- +-------+-----------------------+----------+
-- 1 row in set (0.00 sec)




mysql> SELECT category, SUM(quantity) , SUM(discount) FROM sales WHERE quantity > 2 GROUP BY category HAVING SUM(discount) > 500 ORDER BY SUM(quantity)  DESC LIMIT 1 OFFSET 2;

-- +-------------+---------------+---------------+
-- | category    | SUM(quantity) | SUM(discount) |
-- +-------------+---------------+---------------+
-- | Electronics |            11 |       4300.00 |
-- +-------------+---------------+---------------+
-- 1 row in set (0.00 sec)




mysql> SELECT customer_type, SUM(quantity * price), AVG(price) FROM sales WHERE status = 'Completed' GROUP BY customer_type HAVING AVG(price) > 5000 ORDER BY SUM(quantity * price) DESC LIMIT 2 OFFSET 1;

-- +---------------+-----------------------+--------------+
-- | customer_type | SUM(quantity * price) | AVG(price)   |
-- +---------------+-----------------------+--------------+
-- | Regular       |             161100.00 | 17060.000000 |
-- +---------------+-----------------------+--------------+
-- 1 row in set (0.00 sec)




mysql> SELECT city, COUNT(*), SUM(quantity), SUM(quantity * price) FROM sales WHERE status = 'Completed' AND payment_method IN ('UPI', 'Card') AND quantity > 1 GROUP BY city HAVING COUNT(*) > 1 AND SUM(quantity) > 5 AND SUM(quantity * price) > 20000 ORDER BY SUM(quantity * price)  DESC LIMIT 3;

-- +--------+----------+---------------+-----------------------+
-- | city   | COUNT(*) | SUM(quantity) | SUM(quantity * price) |
-- +--------+----------+---------------+-----------------------+
-- | Indore |        2 |             8 |             129000.00 |
-- | Delhi  |        2 |             8 |             100800.00 |
-- | Bhopal |        2 |            13 |              81000.00 |
-- +--------+----------+---------------+-----------------------+
-- 3 rows in set (0.00 sec)