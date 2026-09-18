mysql> CREATE TABLE department_pdbc( dept_id INT PRIMARY KEY, dept_name VARCHAR(50), location VARCHAR(40));
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO department_pdbc VALUES
    -> (1, 'IT', 'Indore'),
    -> (2, 'HR', 'Bhopal'),
    -> (3, 'Finance', 'Indore'),
    -> (4, 'Sales', 'Ujjain'),
    -> (5, 'Training', 'Dewas');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DESC department_pdbc;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(50) | YES  |     | NULL    |       |
| location  | varchar(40) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM department_pdbc;
+---------+-----------+----------+
| dept_id | dept_name | location |
+---------+-----------+----------+
|       1 | IT        | Indore   |
|       2 | HR        | Bhopal   |
|       3 | Finance   | Indore   |
|       4 | Sales     | Ujjain   |
|       5 | Training  | Dewas    |
+---------+-----------+----------+
5 rows in set (0.00 sec)

















mysql> CREATE TABLE employee_pdbc( emp_id INT PRIMARY KEY, emp_name VARCHAR(60), salary DECIMAL(10,2), job_title VARCHAR(50), dept_id INT, manager_id INT NULL,
    -> FOREIGN KEY(dept_id) REFERENCES department_pdbc(dept_id),
    -> FOREIGN KEY(manager_id) REFERENCES employee_pdbc(emp_id));
Query OK, 0 rows affected (0.05 sec)

mysql> DESC employee_pdbc;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| emp_id     | int           | NO   | PRI | NULL    |       |
| emp_name   | varchar(60)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
| job_title  | varchar(50)   | YES  |     | NULL    |       |
| dept_id    | int           | YES  | MUL | NULL    |       |
| manager_id | int           | YES  | MUL | NULL    |       |
+------------+---------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> INSERT INTO employee_pdbc VALUES
    -> (101, 'Amit', 70000.00, 'Developer', 1, NULL),
    -> (102, 'Priya', 55000.00, 'Tester', 1, 101),
    -> (103, 'Rahul', 90000.00, 'Manager', 1, NULL),
    -> (104, 'Neha', 45000.00, 'HR Executive', 2, NULL),
    -> (105, 'Karan', 80000.00, 'Finance Manager', 3, NULL),
    -> (106, 'Anjali', 50000.00, 'Accountant', 3, 105),
    -> (107, 'Vijay', 40000.00, 'Sales Executive', 4, NULL),
    -> (108, 'Pooja', 60000.00, 'Trainer', 5, NULL);
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_pdbc;
+--------+----------+----------+-----------------+---------+------------+
| emp_id | emp_name | salary   | job_title       | dept_id | manager_id |
+--------+----------+----------+-----------------+---------+------------+
|    101 | Amit     | 70000.00 | Developer       |       1 |       NULL |
|    102 | Priya    | 55000.00 | Tester          |       1 |        101 |
|    103 | Rahul    | 90000.00 | Manager         |       1 |       NULL |
|    104 | Neha     | 45000.00 | HR Executive    |       2 |       NULL |
|    105 | Karan    | 80000.00 | Finance Manager |       3 |       NULL |
|    106 | Anjali   | 50000.00 | Accountant      |       3 |        105 |
|    107 | Vijay    | 40000.00 | Sales Executive |       4 |       NULL |
|    108 | Pooja    | 60000.00 | Trainer         |       5 |       NULL |
+--------+----------+----------+-----------------+---------+------------+
8 rows in set (0.00 sec)