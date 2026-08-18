`
QNO 9:


You are designing a system to store movie reviews. Start with basic details and then evolve the table structure using ALTER, RENAME, TRUNCATE, and DROP, and perform INSERT operations at each stage.

 Initial Table Creation:
Create a table movie_reviews with the following columns:

review_id INT

movie_title VARCHAR(150)

reviewer_name VARCHAR(100)

rating DECIMAL(2,1)

review_text TEXT

 Insert 3 sample movie reviews

Step 1: Add More Columns (ALTER)
Add the following columns using ALTER:

review_date DATE

platform VARCHAR(50) — (e.g., IMDb, Rotten Tomatoes)

likes INT

 Insert 2 more rows with new columns

 Step 2: Rename a Column
Rename the column reviewer_name to critic_name

 Step 3: Modify Column Types
Modify:

rating to DECIMAL(3,1)

movie_title to VARCHAR(200)

 Step 4: Drop an Unnecessary Column
Drop the likes column

 Step 5: Truncate the Table
Truncate the table so all data is removed

 Step 6: Rename the Table
Rename movie_reviews to archived_reviews

 Step 7: Drop the Table
Finally, drop the archived_reviews table
`










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