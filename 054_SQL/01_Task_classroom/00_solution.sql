mysql> CREATE TABLE students( id INT, name VARCHAR(100), age INT, gender VARCHAR(10), address VARCHAR(150), phone VARCHAR(15), email VARCHAR(100));
-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC students;

-- +---------+--------------+------+-----+---------+-------+
-- | Field   | Type         | Null | Key | Default | Extra |
-- +---------+--------------+------+-----+---------+-------+
-- | id      | int          | YES  |     | NULL    |       |
-- | name    | varchar(100) | YES  |     | NULL    |       |
-- | age     | int          | YES  |     | NULL    |       |
-- | gender  | varchar(10)  | YES  |     | NULL    |       |
-- | address | varchar(150) | YES  |     | NULL    |       |
-- | phone   | varchar(15)  | YES  |     | NULL    |       |
-- | email   | varchar(100) | YES  |     | NULL    |       |
-- +---------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> INSERT INTO students VALUES
    -> (101, 'umesh', 21, 'male', 'indore', 1223451234,'umesh@gmail.com'),
    -> (102, 'kushal', 20,'male','neemuch', 2222444466, 'kpatel@gmailcom'),
    -> (103, 'chotu', 15, 'male', 'tihad', 1111111111, 'donchotu@gmail.com'),
    -> (104, 'motu', 18, 'male', 'delhi', 5555555555, 'delhisehai@gmail.com'),
    -> (105, 'sheela', 25, 'female', 'hyderabad', 8989898989, 'iamasheela@gmail.com');

-- Query OK, 5 rows affected (0.01 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM students;

-- +------+--------+------+--------+-----------+------------+----------------------+
-- | id   | name   | age  | gender | address   | phone      | email                |
-- +------+--------+------+--------+-----------+------------+----------------------+
-- |  101 | umesh  |   21 | male   | indore    | 1223451234 | umesh@gmail.com      |
-- |  102 | kushal |   20 | male   | neemuch   | 2222444466 | kpatel@gmailcom      |
-- |  103 | chotu  |   15 | male   | tihad     | 1111111111 | donchotu@gmail.com   |
-- |  104 | motu   |   18 | male   | delhi     | 5555555555 | delhisehai@gmail.com |
-- |  105 | sheela |   25 | female | hyderabad | 8989898989 | iamasheela@gmail.com |
-- +------+--------+------+--------+-----------+------------+----------------------+
-- 5 rows in set (0.00 sec)
















mysql> CREATE TABLE books( book_id INT, title VARCHAR(150), author VARCHAR(100), genre VARCHAR(50), publication_year INT, price DECIMAL(6,2), publisher VARCHAR(100));

-- Query OK, 0 rows affected (0.35 sec)



mysql> DESC books;

-- +------------------+--------------+------+-----+---------+-------+
-- | Field            | Type         | Null | Key | Default | Extra |
-- +------------------+--------------+------+-----+---------+-------+
-- | book_id          | int          | YES  |     | NULL    |       |
-- | title            | varchar(150) | YES  |     | NULL    |       |
-- | author           | varchar(100) | YES  |     | NULL    |       |
-- | genre            | varchar(50)  | YES  |     | NULL    |       |
-- | publication_year | int          | YES  |     | NULL    |       |
-- | price            | decimal(6,2) | YES  |     | NULL    |       |
-- | publisher        | varchar(100) | YES  |     | NULL    |       |
-- +------------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> INSERT INTO books VALUES
    -> (101, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 299, 'Harpercollins'),
    -> (102, 'Atomic Habits', 'James Clear', 'Self-Help', 2028, 499, 'Avery'),
    -> (103, 'The Hobbit', 'J.J.R. Tolkein', 'Fantasy', 1937, 399, 'George Allen & Unwin'),
    -> (104, 'Ikigai', 'Hector Garcia', 'Self-Help', 2016, 350, 'Penguin Books');

-- Query OK, 4 rows affected (0.08 sec)
-- Records: 4  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM books;

-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- | book_id | title         | author         | genre     | publication_year | price  | publisher            |
-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- |     101 | The Alchemist | Paulo Coelho   | Fiction   |             1988 | 299.00 | Harpercollins        |
-- |     102 | Atomic Habits | James Clear    | Self-Help |             2028 | 499.00 | Avery                |
-- |     103 | The Hobbit    | J.J.R. Tolkein | Fantasy   |             1937 | 399.00 | George Allen & Unwin |
-- |     104 | Ikigai        | Hector Garcia  | Self-Help |             2016 | 350.00 | Penguin Books        |
-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- 4 rows in set (0.00 sec)















mysql> ALTER TABLE students ADD COLUMN dob DATE;

-- Query OK, 0 rows affected (0.03 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> ALTER TABLE students RENAME COLUMN phone TO mobile_number;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> ALTER TABLE students MODIFY COLUMN age SMALLINT;

-- Query OK, 5 rows affected (0.06 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM students;

-- +------+--------+------+--------+-----------+---------------+----------------------+------+
-- | id   | name   | age  | gender | address   | mobile_number | email                | dob  |
-- +------+--------+------+--------+-----------+---------------+----------------------+------+
-- |  101 | umesh  |   21 | male   | indore    | 1223451234    | umesh@gmail.com      | NULL |
-- |  102 | kushal |   20 | male   | neemuch   | 2222444466    | kpatel@gmailcom      | NULL |
-- |  103 | chotu  |   15 | male   | tihad     | 1111111111    | donchotu@gmail.com   | NULL |
-- |  104 | motu   |   18 | male   | delhi     | 5555555555    | delhisehai@gmail.com | NULL |
-- |  105 | sheela |   25 | female | hyderabad | 8989898989    | iamasheela@gmail.com | NULL |
-- +------+--------+------+--------+-----------+---------------+----------------------+------+
-- 5 rows in set (0.00 sec)



mysql> DESC students;

-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | id            | int          | YES  |     | NULL    |       |
-- | name          | varchar(100) | YES  |     | NULL    |       |
-- | age           | smallint     | YES  |     | NULL    |       |
-- | gender        | varchar(10)  | YES  |     | NULL    |       |
-- | address       | varchar(150) | YES  |     | NULL    |       |
-- | mobile_number | varchar(15)  | YES  |     | NULL    |       |
-- | email         | varchar(100) | YES  |     | NULL    |       |
-- | dob           | date         | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+
-- 8 rows in set (0.00 sec)



mysql> ALTER TABLE students DROP COLUMN email;

-- Query OK, 0 rows affected (0.01 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC students;

-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | id            | int          | YES  |     | NULL    |       |
-- | name          | varchar(100) | YES  |     | NULL    |       |
-- | age           | smallint     | YES  |     | NULL    |       |
-- | gender        | varchar(10)  | YES  |     | NULL    |       |
-- | address       | varchar(150) | YES  |     | NULL    |       |
-- | mobile_number | varchar(15)  | YES  |     | NULL    |       |
-- | dob           | date         | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)














mysql> ALTER TABLE books RENAME TO library_books;

-- Query OK, 0 rows affected (0.01 sec)



mysql> SELECT * FROM library_books;

-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- | book_id | title         | author         | genre     | publication_year | price  | publisher            |
-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- |     101 | The Alchemist | Paulo Coelho   | Fiction   |             1988 | 299.00 | Harpercollins        |
-- |     102 | Atomic Habits | James Clear    | Self-Help |             2028 | 499.00 | Avery                |
-- |     103 | The Hobbit    | J.J.R. Tolkein | Fantasy   |             1937 | 399.00 | George Allen & Unwin |
-- |     104 | Ikigai        | Hector Garcia  | Self-Help |             2016 | 350.00 | Penguin Books        |
-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- 4 rows in set (0.00 sec)















mysql> TRUNCATE TABLE students;

-- Query OK, 0 rows affected (0.03 sec)



mysql> SELECT * FROM students;

-- Empty set (0.00 sec)



mysql> DESC students;

-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | id            | int          | YES  |     | NULL    |       |
-- | name          | varchar(100) | YES  |     | NULL    |       |
-- | age           | smallint     | YES  |     | NULL    |       |
-- | gender        | varchar(10)  | YES  |     | NULL    |       |
-- | address       | varchar(150) | YES  |     | NULL    |       |
-- | mobile_number | varchar(15)  | YES  |     | NULL    |       |
-- | dob           | date         | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)















mysql> DROP TABLE library_books;

-- Query OK, 0 rows affected (0.01 sec)



mysql> SELECT * FROM library_books;

-- ERROR 1146 (42S02): Table 'batch18.library_books' doesn't exist


mysql> DESC library_books;

-- ERROR 1146 (42S02): Table 'batch18.library_books' doesn't exist

















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





















mysql> CREATE TABLE employees( emp_id INT, emp_name VARCHAR(100), gender VARCHAR(10), dob DATE, department VARCHAR(100), position VARCHAR(100), salary DECIMAL(8,2), joining_date DATE, phone VARCHAR(15));

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC employees;

-- +--------------+--------------+------+-----+---------+-------+
-- | Field        | Type         | Null | Key | Default | Extra |
-- +--------------+--------------+------+-----+---------+-------+
-- | emp_id       | int          | YES  |     | NULL    |       |
-- | emp_name     | varchar(100) | YES  |     | NULL    |       |
-- | gender       | varchar(10)  | YES  |     | NULL    |       |
-- | dob          | date         | YES  |     | NULL    |       |
-- | department   | varchar(100) | YES  |     | NULL    |       |
-- | position     | varchar(100) | YES  |     | NULL    |       |
-- | salary       | decimal(8,2) | YES  |     | NULL    |       |
-- | joining_date | date         | YES  |     | NULL    |       |
-- | phone        | varchar(15)  | YES  |     | NULL    |       |
-- +--------------+--------------+------+-----+---------+-------+
-- 9 rows in set (0.00 sec)



mysql> INSERT INTO employees VALUES
    -> (1, 'Rahul Sharma', 'Male', '2000-05-14', 'IT', 'Software Developer', 45000.00, '2024-07-01', '9876543210'),
    -> (2, 'Priya Verma', 'Female', '1999-11-22', 'HR', 'HR Executive', 38000.00, '2023-06-15', '9876501234'),
    -> (3, 'Amit Patel', 'Male', '2001-02-10', 'Finance', 'Accountant', 42000.50, '2024-01-10', '9988776655'),
    -> (4, 'Neha Singh', 'Female', '1998-08-30', 'Marketing', 'Marketing Manager', 65000.00, '2022-09-05', '9123456789'),
    -> (5, 'Vikas Gupta', 'Male', '2000-12-18', 'IT', 'Backend Developer', 52000.75, '2024-03-20', '9012345678');

-- Query OK, 5 rows affected (0.01 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM employees;

-- +--------+--------------+--------+------------+------------+--------------------+----------+--------------+------------+
-- | emp_id | emp_name     | gender | dob        | department | position           | salary   | joining_date | phone      |
-- +--------+--------------+--------+------------+------------+--------------------+----------+--------------+------------+
-- |      1 | Rahul Sharma | Male   | 2000-05-14 | IT         | Software Developer | 45000.00 | 2024-07-01   | 9876543210 |
-- |      2 | Priya Verma  | Female | 1999-11-22 | HR         | HR Executive       | 38000.00 | 2023-06-15   | 9876501234 |
-- |      3 | Amit Patel   | Male   | 2001-02-10 | Finance    | Accountant         | 42000.50 | 2024-01-10   | 9988776655 |
-- |      4 | Neha Singh   | Female | 1998-08-30 | Marketing  | Marketing Manager  | 65000.00 | 2022-09-05   | 9123456789 |
-- |      5 | Vikas Gupta  | Male   | 2000-12-18 | IT         | Backend Developer  | 52000.75 | 2024-03-20   | 9012345678 |
-- +--------+--------------+--------+------------+------------+--------------------+----------+--------------+------------+
-- 5 rows in set (0.00 sec)

























mysql> CREATE TABLE movie_reviews ( review_id INT, movie_title VARCHAR(150), reviewer_name VARCHAR(100), rating DECIMAL(2,1), review_text TEXT);

-- Query OK, 0 rows affected (0.02 sec)



mysql> INSERT INTO movie_reviews VALUES
    -> (1, 'Inception', 'Rahul Sharma', 4.8, 'Amazing movie with a brilliant story and mind-bending concept.'),
    -> (2, 'Interstellar', 'Priya Verma', 4.9, 'A beautiful science fiction movie with great visuals and emotional depth.'),
    -> (3, 'The Dark Knight', 'Amit Patel', 4.7, 'Excellent acting, strong storyline, and an unforgettable villain.');

-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM movie_reviews;

-- +-----------+-----------------+---------------+--------+---------------------------------------------------------------------------+
-- | review_id | movie_title     | reviewer_name | rating | review_text                                                               |
-- +-----------+-----------------+---------------+--------+---------------------------------------------------------------------------+
-- |         1 | Inception       | Rahul Sharma  |    4.8 | Amazing movie with a brilliant story and mind-bending concept.            |
-- |         2 | Interstellar    | Priya Verma   |    4.9 | A beautiful science fiction movie with great visuals and emotional depth. |
-- |         3 | The Dark Knight | Amit Patel    |    4.7 | Excellent acting, strong storyline, and an unforgettable villain.         |
-- +-----------+-----------------+---------------+--------+---------------------------------------------------------------------------+
-- 3 rows in set (0.00 sec)










mysql> ALTER TABLE movie_reviews ADD COLUMN review_date DATE, ADD COLUMN platform VARCHAR(50), ADD COLUMN likes INT;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC movie_reviews;

-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | review_id     | int          | YES  |     | NULL    |       |
-- | movie_title   | varchar(150) | YES  |     | NULL    |       |
-- | reviewer_name | varchar(100) | YES  |     | NULL    |       |
-- | rating        | decimal(2,1) | YES  |     | NULL    |       |
-- | review_text   | text         | YES  |     | NULL    |       |
-- | review_date   | date         | YES  |     | NULL    |       |
-- | platform      | varchar(50)  | YES  |     | NULL    |       |
-- | likes         | int          | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+
-- 8 rows in set (0.00 sec)



mysql> SELECT * FROM movie_reviews;

-- +-----------+-----------------+---------------+--------+---------------------------------------------------------------------------+-------------+----------+-------+
-- | review_id | movie_title     | reviewer_name | rating | review_text                                                               | review_date | platform | likes |
-- +-----------+-----------------+---------------+--------+---------------------------------------------------------------------------+-------------+----------+-------+
-- |         1 | Inception       | Rahul Sharma  |    4.8 | Amazing movie with a brilliant story and mind-bending concept.            | NULL        | NULL     |  NULL |
-- |         2 | Interstellar    | Priya Verma   |    4.9 | A beautiful science fiction movie with great visuals and emotional depth. | NULL        | NULL     |  NULL |
-- |         3 | The Dark Knight | Amit Patel    |    4.7 | Excellent acting, strong storyline, and an unforgettable villain.         | NULL        | NULL     |  NULL |
-- +-----------+-----------------+---------------+--------+---------------------------------------------------------------------------+-------------+----------+-------+
-- 3 rows in set (0.00 sec)



mysql> INSERT INTO movie_reviews VALUES
    -> (4, 'Avengers: Endgame', 'Neha Singh', 4.6, 'A great superhero movie with emotional moments and exciting action.', '2026-08-10', 'IMDb', 1250),
    -> (5, '3 Idiots', 'Vikas Gupta', 4.9, 'A meaningful and entertaining movie with a strong message about education.', '2026-08-12', 'Rotten Tomatoes', 980);

-- Query OK, 2 rows affected (0.00 sec)
-- Records: 2  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM movie_reviews;

-- +-----------+-------------------+---------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- | review_id | movie_title       | reviewer_name | rating | review_text                                                                | review_date | platform        | likes |
-- +-----------+-------------------+---------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- |         1 | Inception         | Rahul Sharma  |    4.8 | Amazing movie with a brilliant story and mind-bending concept.             | NULL        | NULL            |  NULL |
-- |         2 | Interstellar      | Priya Verma   |    4.9 | A beautiful science fiction movie with great visuals and emotional depth.  | NULL        | NULL            |  NULL |
-- |         3 | The Dark Knight   | Amit Patel    |    4.7 | Excellent acting, strong storyline, and an unforgettable villain.          | NULL        | NULL            |  NULL |
-- |         4 | Avengers: Endgame | Neha Singh    |    4.6 | A great superhero movie with emotional moments and exciting action.        | 2026-08-10  | IMDb            |  1250 |
-- |         5 | 3 Idiots          | Vikas Gupta   |    4.9 | A meaningful and entertaining movie with a strong message about education. | 2026-08-12  | Rotten Tomatoes |   980 |
-- +-----------+-------------------+---------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- 5 rows in set (0.00 sec)








mysql> ALTER TABLE movie_reviews RENAME COLUMN reviewer_name TO critic_name;

-- Query OK, 0 rows affected (0.01 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM movie_reviews;
-- +-----------+-------------------+--------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- | review_id | movie_title       | critic_name  | rating | review_text                                                                | review_date | platform        | likes |
-- +-----------+-------------------+--------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- |         1 | Inception         | Rahul Sharma |    4.8 | Amazing movie with a brilliant story and mind-bending concept.             | NULL        | NULL            |  NULL |
-- |         2 | Interstellar      | Priya Verma  |    4.9 | A beautiful science fiction movie with great visuals and emotional depth.  | NULL        | NULL            |  NULL |
-- |         3 | The Dark Knight   | Amit Patel   |    4.7 | Excellent acting, strong storyline, and an unforgettable villain.          | NULL        | NULL            |  NULL |
-- |         4 | Avengers: Endgame | Neha Singh   |    4.6 | A great superhero movie with emotional moments and exciting action.        | 2026-08-10  | IMDb            |  1250 |
-- |         5 | 3 Idiots          | Vikas Gupta  |    4.9 | A meaningful and entertaining movie with a strong message about education. | 2026-08-12  | Rotten Tomatoes |   980 |
-- +-----------+-------------------+--------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- 5 rows in set (0.00 sec)







mysql> ALTER TABLE movie_reviews MODIFY COLUMN rating DECIMAL(3,1), MODIFY COLUMN movie_title VARCHAR(200);

-- Query OK, 5 rows affected (0.09 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> DESC movie_reviews;

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | review_id   | int          | YES  |     | NULL    |       |
-- | movie_title | varchar(200) | YES  |     | NULL    |       |
-- | critic_name | varchar(100) | YES  |     | NULL    |       |
-- | rating      | decimal(3,1) | YES  |     | NULL    |       |
-- | review_text | text         | YES  |     | NULL    |       |
-- | review_date | date         | YES  |     | NULL    |       |
-- | platform    | varchar(50)  | YES  |     | NULL    |       |
-- | likes       | int          | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+
-- 8 rows in set (0.00 sec)



mysql> SELECT * FROM movie_reviews;

-- +-----------+-------------------+--------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- | review_id | movie_title       | critic_name  | rating | review_text                                                                | review_date | platform        | likes |
-- +-----------+-------------------+--------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- |         1 | Inception         | Rahul Sharma |    4.8 | Amazing movie with a brilliant story and mind-bending concept.             | NULL        | NULL            |  NULL |
-- |         2 | Interstellar      | Priya Verma  |    4.9 | A beautiful science fiction movie with great visuals and emotional depth.  | NULL        | NULL            |  NULL |
-- |         3 | The Dark Knight   | Amit Patel   |    4.7 | Excellent acting, strong storyline, and an unforgettable villain.          | NULL        | NULL            |  NULL |
-- |         4 | Avengers: Endgame | Neha Singh   |    4.6 | A great superhero movie with emotional moments and exciting action.        | 2026-08-10  | IMDb            |  1250 |
-- |         5 | 3 Idiots          | Vikas Gupta  |    4.9 | A meaningful and entertaining movie with a strong message about education. | 2026-08-12  | Rotten Tomatoes |   980 |
-- +-----------+-------------------+--------------+--------+----------------------------------------------------------------------------+-------------+-----------------+-------+
-- 5 rows in set (0.00 sec)








mysql> ALTER TABLE movie_reviews DROP COLUMN likes;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC movie_reviews;

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | review_id   | int          | YES  |     | NULL    |       |
-- | movie_title | varchar(200) | YES  |     | NULL    |       |
-- | critic_name | varchar(100) | YES  |     | NULL    |       |
-- | rating      | decimal(3,1) | YES  |     | NULL    |       |
-- | review_text | text         | YES  |     | NULL    |       |
-- | review_date | date         | YES  |     | NULL    |       |
-- | platform    | varchar(50)  | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)






mysql> TRUNCATE TABLE movie_reviews;

-- Query OK, 0 rows affected (0.03 sec)






mysql> SELECT * FROM movie_reviews;

-- Empty set (0.00 sec)


mysql> DESC movie_reviews;

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | review_id   | int          | YES  |     | NULL    |       |
-- | movie_title | varchar(200) | YES  |     | NULL    |       |
-- | critic_name | varchar(100) | YES  |     | NULL    |       |
-- | rating      | decimal(3,1) | YES  |     | NULL    |       |
-- | review_text | text         | YES  |     | NULL    |       |
-- | review_date | date         | YES  |     | NULL    |       |
-- | platform    | varchar(50)  | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)






mysql> ALTER TABLE movie_reviews RENAME TO archived_reviews;

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC archived_reviews;

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | review_id   | int          | YES  |     | NULL    |       |
-- | movie_title | varchar(200) | YES  |     | NULL    |       |
-- | critic_name | varchar(100) | YES  |     | NULL    |       |
-- | rating      | decimal(3,1) | YES  |     | NULL    |       |
-- | review_text | text         | YES  |     | NULL    |       |
-- | review_date | date         | YES  |     | NULL    |       |
-- | platform    | varchar(50)  | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.01 sec)



mysql> SELECT * FROM archived_reviews;

-- Empty set (0.00 sec)






mysql> DROP TABLE archived_reviews;

-- Query OK, 0 rows affected (0.05 sec)



mysql> DESC archived_reviews;

-- ERROR 1146 (42S02): Table 'batch18.archived_reviews' doesn't exist



mysql> SELECT * FROM archived_reviews;

-- ERROR 1146 (42S02): Table 'batch18.archived_reviews' doesn't exist