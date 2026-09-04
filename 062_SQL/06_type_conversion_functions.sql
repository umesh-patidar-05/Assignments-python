`
MYSQL TYPE CONVERSION ASSIGNMENT

Scenario
A financial analytics company manages transactions, billing schedules, user registrations, and account balances using MySQL. Because data comes in from legacy flat files, API payloads, and external payment gateways, several columns contain mixed formats, text-based numbers, unformatted date strings, and floating-point representations.

The finance and compliance teams need reports that require explicit and implicit type conversions (CAST, CONVERT, date/time parsing, and numeric coercion) to ensure mathematical accuracy and standardized data formats.

You are given the following table and initial data. Write appropriate SELECT queries to perform the required operations.

Table Name: transaction_records

Columns:
- transaction_id (VARCHAR(20), PRIMARY KEY) — Mixed string ID (e.g., 'TXN-1001')
- customer_name (VARCHAR(50), NOT NULL) — Customer name
- amount_str (VARCHAR(30), NOT NULL) — Transaction amount stored as string text
- discount_pct (DECIMAL(5,2), NULL) — Discount percentage applied
- tx_date_text (VARCHAR(30), NOT NULL) — Date stored as text in DD/MM/YYYY format
- created_timestamp (DATETIME, NOT NULL) — System registration timestamp
- status_code (VARCHAR(5), NOT NULL) — Numerical status stored as text ('1' or '0')

Data Setup Script:
CREATE TABLE transaction_records (transaction_id VARCHAR(20) PRIMARY KEY, customer_name VARCHAR(50) NOT NULL, amount_str VARCHAR(30) NOT NULL, discount_pct DECIMAL(5,2), tx_date_text VARCHAR(30) NOT NULL, created_timestamp DATETIME NOT NULL, status_code VARCHAR(5) NOT NULL);
INSERT INTO transaction_records VALUES ('TXN-1001', 'Rahul Sharma', '15400.50', 5.50, '15/01/2025', '2025-01-15 10:30:00', '1'), ('TXN-1002', 'Priya Verma', '8200.00', 0.00, '22/01/2025', '2025-01-22 14:15:30', '1'), ('TXN-1003', 'Amit Patel', '12050.75', 10.00, '05/02/2025', '2025-02-05 09:45:12', '0'), ('TXN-1004', 'Neha Singh', '4500.25', NULL, '18/02/2025', '2025-02-18 16:20:00', '1'), ('TXN-1005', 'Rohit Jain', '23000.00', 12.50, '01/03/2025', '2025-03-01 11:10:05', '0'), ('TXN-1006', 'Sneha Gupta', '999.90', 2.00, '12/03/2025', '2025-03-12 18:00:00', '1'), ('TXN-1007', 'Vikas Yadav', '17500.80', 7.25, '25/03/2025', '2025-03-25 08:05:40', '1'), ('TXN-1008', 'Anjali Mehta', '3100.00', NULL, '04/04/2025', '2025-04-04 12:50:22', '0');


QUESTIONS

Explicit Numeric & String Conversions

Q1.
The finance team needs the transaction amounts as signed integer values (rounded/truncated as integer) for a high-level summary report.
Convert amount_str into a SIGNED integer using CAST().

Q2.
The compliance system requires the string amount amount_str to be explicitly converted into a DECIMAL(10,2) numerical value using CONVERT().

Q3.
To generate a plain text invoice log, display transaction_id, customer_name, and discount_pct joined together as a single string column formatted like:
TXN-1001 : Rahul Sharma : 5.50
Ensure the numeric discount_pct column is safely converted to character data using CAST(... AS CHAR).

Date & Time Type Conversions

Q4.
The tx_date_text column stores dates as string text in the format DD/MM/YYYY (e.g., '15/01/2025').
Use STR_TO_DATE() to convert this text column into a valid MySQL DATE type.

Q5.
Extract and display only the date portion (YYYY-MM-DD) from created_timestamp by explicitly casting created_timestamp as a DATE type.

Q6.
Format the created_timestamp column into a readable text date string in the format "15th January 2025" using date-to-string formatting functions.

Q7.
Convert the tx_date_text column into a standard DATE format, and then display the day of the week (e.g., 'Wednesday', 'Thursday') on which each transaction occurred.

Q8.
Extract the numerical sequence from transaction_id (e.g., extract '1001' from 'TXN-1001') and explicitly convert it into an UNSIGNED integer.

Q9.
The column status_code stores active status as string '1' and inactive status as '0'.
Write a query using CASE or IF that evaluates status_code and displays 'Active' for '1' and 'Inactive' for '0'.

Q10.
Calculate the net transaction amount after applying discount_pct.
Since amount_str is stored as a string, perform the necessary explicit type conversion to calculate:
Net Amount = Amount - (Amount * Discount / 100)
Treat NULL discount values as 0%.
`













mysql> CREATE TABLE transaction_records(
    -> transaction_id VARCHAR(20) PRIMARY KEY,
    -> customer_name VARCHAR(50) NOT NULL,
    -> amount_str VARCHAR(30) NOT NULL,
    -> discount_pct DECIMAL(5,2),
    -> tx_date_text VARCHAR(30) NOT NULL,
    -> created_timestamp DATETIME NOT NULL,
    -> status_code VARCHAR(5) NOT NULL );

-- Query OK, 0 rows affected (0.11 sec)





mysql> DESC transaction_records;

-- +-------------------+--------------+------+-----+---------+-------+
-- | Field             | Type         | Null | Key | Default | Extra |
-- +-------------------+--------------+------+-----+---------+-------+
-- | transaction_id    | varchar(20)  | NO   | PRI | NULL    |       |
-- | customer_name     | varchar(50)  | NO   |     | NULL    |       |
-- | amount_str        | varchar(30)  | NO   |     | NULL    |       |
-- | discount_pct      | decimal(5,2) | YES  |     | NULL    |       |
-- | tx_date_text      | varchar(30)  | NO   |     | NULL    |       |
-- | created_timestamp | datetime     | NO   |     | NULL    |       |
-- | status_code       | varchar(5)   | NO   |     | NULL    |       |
-- +-------------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.01 sec)





mysql> INSERT INTO transaction_records VALUES
    -> ('TXN-1001', 'Rahul Sharma', '15400.50', 5.50, '15/01/2025', '2025-01-15 10:30:00', '1'),
    -> ('TXN-1002', 'Priya Verma', '8200.00', 0.00, '22/01/2025', '2025-01-22 14:15:30', '1'),
    -> ('TXN-1003', 'Amit Patel', '12050.75', 10.00, '05/02/2025', '2025-02-05 09:45:12', '0'),
    -> ('TXN-1004', 'Neha Singh', '4500.25', NULL, '18/02/2025', '2025-02-18 16:20:00', '1'),
    -> ('TXN-1005', 'Rohit Jain', '23000.00', 12.50, '01/03/2025', '2025-03-01 11:10:05', '0'),
    -> ('TXN-1006', 'Sneha Gupta', '999.90', 2.00, '12/03/2025', '2025-03-12 18:00:00', '1'),
    -> ('TXN-1007', 'Vikas Yadav', '17500.80', 7.25, '25/03/2025', '2025-03-25 08:05:40', '1'),
    -> ('TXN-1008', 'Anjali Mehta', '3100.00', NULL, '04/04/2025', '2025-04-04 12:50:22', '0');

-- Query OK, 8 rows affected (0.01 sec)
-- Records: 8  Duplicates: 0  Warnings: 0





mysql> SELECT * FROM transaction_records;

-- +----------------+---------------+------------+--------------+--------------+---------------------+-------------+
-- | transaction_id | customer_name | amount_str | discount_pct | tx_date_text | created_timestamp   | status_code |
-- +----------------+---------------+------------+--------------+--------------+---------------------+-------------+
-- | TXN-1001       | Rahul Sharma  | 15400.50   |         5.50 | 15/01/2025   | 2025-01-15 10:30:00 | 1           |
-- | TXN-1002       | Priya Verma   | 8200.00    |         0.00 | 22/01/2025   | 2025-01-22 14:15:30 | 1           |
-- | TXN-1003       | Amit Patel    | 12050.75   |        10.00 | 05/02/2025   | 2025-02-05 09:45:12 | 0           |
-- | TXN-1004       | Neha Singh    | 4500.25    |         NULL | 18/02/2025   | 2025-02-18 16:20:00 | 1           |
-- | TXN-1005       | Rohit Jain    | 23000.00   |        12.50 | 01/03/2025   | 2025-03-01 11:10:05 | 0           |
-- | TXN-1006       | Sneha Gupta   | 999.90     |         2.00 | 12/03/2025   | 2025-03-12 18:00:00 | 1           |
-- | TXN-1007       | Vikas Yadav   | 17500.80   |         7.25 | 25/03/2025   | 2025-03-25 08:05:40 | 1           |
-- | TXN-1008       | Anjali Mehta  | 3100.00    |         NULL | 04/04/2025   | 2025-04-04 12:50:22 | 0           |
-- +----------------+---------------+------------+--------------+--------------+---------------------+-------------+
-- 8 rows in set (0.00 sec)





mysql> SELECT customer_name, CAST(amount_str AS SIGNED) FROM transaction_records;

-- +---------------+----------------------------+
-- | customer_name | CAST(amount_str AS SIGNED) |
-- +---------------+----------------------------+
-- | Rahul Sharma  |                      15400 |
-- | Priya Verma   |                       8200 |
-- | Amit Patel    |                      12050 |
-- | Neha Singh    |                       4500 |
-- | Rohit Jain    |                      23000 |
-- | Sneha Gupta   |                        999 |
-- | Vikas Yadav   |                      17500 |
-- | Anjali Mehta  |                       3100 |
-- +---------------+----------------------------+
-- 8 rows in set, 8 warnings (0.00 sec)





mysql> SELECT customer_name, CONVERT(amount_str, DECIMAL(10,2)) FROM transaction_records;

-- +---------------+------------------------------------+
-- | customer_name | CONVERT(amount_str, DECIMAL(10,2)) |
-- +---------------+------------------------------------+
-- | Rahul Sharma  |                           15400.50 |
-- | Priya Verma   |                            8200.00 |
-- | Amit Patel    |                           12050.75 |
-- | Neha Singh    |                            4500.25 |
-- | Rohit Jain    |                           23000.00 |
-- | Sneha Gupta   |                             999.90 |
-- | Vikas Yadav   |                           17500.80 |
-- | Anjali Mehta  |                            3100.00 |
-- +---------------+------------------------------------+
-- 8 rows in set (0.00 sec)





mysql> SELECT CONCAT_WS(' : ', transaction_id, customer_name, CAST(discount_pct AS CHAR)) FROM transaction_records;

-- +-----------------------------------------------------------------------------+
-- | CONCAT_WS(' : ', transaction_id, customer_name, CAST(discount_pct AS CHAR)) |
-- +-----------------------------------------------------------------------------+
-- | TXN-1001 : Rahul Sharma : 5.50                                              |
-- | TXN-1002 : Priya Verma : 0.00                                               |
-- | TXN-1003 : Amit Patel : 10.00                                               |
-- | TXN-1004 : Neha Singh                                                       |
-- | TXN-1005 : Rohit Jain : 12.50                                               |
-- | TXN-1006 : Sneha Gupta : 2.00                                               |
-- | TXN-1007 : Vikas Yadav : 7.25                                               |
-- | TXN-1008 : Anjali Mehta                                                     |
-- +-----------------------------------------------------------------------------+
-- 8 rows in set (0.00 sec)





mysql> SELECT customer_name, STR_TO_DATE(tx_date_text, '%d/%m/%Y') FROM transaction_records;

-- +---------------+---------------------------------------+
-- | customer_name | STR_TO_DATE(tx_date_text, '%d/%m/%Y') |
-- +---------------+---------------------------------------+
-- | Rahul Sharma  | 2025-01-15                            |
-- | Priya Verma   | 2025-01-22                            |
-- | Amit Patel    | 2025-02-05                            |
-- | Neha Singh    | 2025-02-18                            |
-- | Rohit Jain    | 2025-03-01                            |
-- | Sneha Gupta   | 2025-03-12                            |
-- | Vikas Yadav   | 2025-03-25                            |
-- | Anjali Mehta  | 2025-04-04                            |
-- +---------------+---------------------------------------+
-- 8 rows in set (0.00 sec)





mysql> SELECT customer_name, CAST(created_timestamp AS DATE) FROM transaction_records;

-- +---------------+---------------------------------+
-- | customer_name | CAST(created_timestamp AS DATE) |
-- +---------------+---------------------------------+
-- | Rahul Sharma  | 2025-01-15                      |
-- | Priya Verma   | 2025-01-22                      |
-- | Amit Patel    | 2025-02-05                      |
-- | Neha Singh    | 2025-02-18                      |
-- | Rohit Jain    | 2025-03-01                      |
-- | Sneha Gupta   | 2025-03-12                      |
-- | Vikas Yadav   | 2025-03-25                      |
-- | Anjali Mehta  | 2025-04-04                      |
-- +---------------+---------------------------------+
-- 8 rows in set (0.00 sec)




mysql> SELECT DATE_FORMAT(created_timestamp, '%d %M %Y') FROM transaction_records;

-- +--------------------------------------------+
-- | DATE_FORMAT(created_timestamp, '%d %M %Y') |
-- +--------------------------------------------+
-- | 15 January 2025                            |
-- | 22 January 2025                            |
-- | 05 February 2025                           |
-- | 18 February 2025                           |
-- | 01 March 2025                              |
-- | 12 March 2025                              |
-- | 25 March 2025                              |
-- | 04 April 2025                              |
-- +--------------------------------------------+
-- 8 rows in set (0.00 sec)





mysql> SELECT DATE_FORMAT( STR_TO_DATE(tx_date_text, '%d/%m/%Y'), '%Y-%m-%d') AS standard, DAYNAME(STR_TO_DATE(tx_date_text, '%d/%m/%Y')) FROM transaction_records;

-- +------------+------------------------------------------------+
-- | standard   | DAYNAME(STR_TO_DATE(tx_date_text, '%d/%m/%Y')) |
-- +------------+------------------------------------------------+
-- | 2025-01-15 | Wednesday                                      |
-- | 2025-01-22 | Wednesday                                      |
-- | 2025-02-05 | Wednesday                                      |
-- | 2025-02-18 | Tuesday                                        |
-- | 2025-03-01 | Saturday                                       |
-- | 2025-03-12 | Wednesday                                      |
-- | 2025-03-25 | Tuesday                                        |
-- | 2025-04-04 | Friday                                         |
-- +------------+------------------------------------------------+
-- 8 rows in set (0.00 sec)





mysql> SELECT transaction_id, CAST(SUBSTRING_INDEX(transaction_id, '-', -1) AS UNSIGNED) AS transaction_number FROM transaction_records;

-- +----------------+--------------------+
-- | transaction_id | transaction_number |
-- +----------------+--------------------+
-- | TXN-1001       |               1001 |
-- | TXN-1002       |               1002 |
-- | TXN-1003       |               1003 |
-- | TXN-1004       |               1004 |
-- | TXN-1005       |               1005 |
-- | TXN-1006       |               1006 |
-- | TXN-1007       |               1007 |
-- | TXN-1008       |               1008 |
-- +----------------+--------------------+
-- 8 rows in set (0.02 sec)





mysql> SELECT status_code, CASE
    ->   WHEN CAST(status_code AS SIGNED) = 0 THEN 'Inactive'
    ->   WHEN CAST(status_code AS SIGNED) = 1 THEN 'Active'
    -> END AS status FROM transaction_records;

-- +-------------+----------+
-- | status_code | status   |
-- +-------------+----------+
-- | 1           | Active   |
-- | 1           | Active   |
-- | 0           | Inactive |
-- | 1           | Active   |
-- | 0           | Inactive |
-- | 1           | Active   |
-- | 1           | Active   |
-- | 0           | Inactive |
-- +-------------+----------+
-- 8 rows in set (0.01 sec)




mysql> SELECT customer_name, (CAST(amount_str AS DECIMAL(10,2)) - (CAST(amount_str AS DECIMAL(10,2)) * IFNULL(discount_pct, 0) / 100)) AS net_amount FROM transaction_records;

-- +---------------+----------------+
-- | customer_name | net_amount     |
-- +---------------+----------------+
-- | Rahul Sharma  | 14553.47250000 |
-- | Priya Verma   |  8200.00000000 |
-- | Amit Patel    | 10845.67500000 |
-- | Neha Singh    |  4500.25000000 |
-- | Rohit Jain    | 20125.00000000 |
-- | Sneha Gupta   |   979.90200000 |
-- | Vikas Yadav   | 16231.99200000 |
-- | Anjali Mehta  |  3100.00000000 |
-- +---------------+----------------+
-- 8 rows in set (0.00 sec)
