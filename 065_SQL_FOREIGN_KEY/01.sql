`
QNO 1:
A company wants to manage its employees and their respective departments. Each employee must belong to a department. If a department is deleted, all employees in that department should also be removed automatically.
Tasks:
1. Create the Departments Table
Each department has a unique ID (DepartmentID).
The department name must be unique.
The department name cannot be NULL.
2. Create the Employees Table
Each employee has a unique ID (EmployeeID).
Each employee has a name and salary, both cannot be NULL.
Each employee must be assigned to a department (DepartmentID), which is a FOREIGN KEY referencing Departments(DepartmentID).
If a department is deleted, all employees in that department should also be deleted.
3. Insert Sample Data
Insert at least 3 departments.
Insert at least 5 employees (make sure at least two employees belong to the same department).
4. Implement Query Constraints (Without Using JOIN)
Write a query to list all employees and their department names (without using JOIN).
Write a query to update an employee's department.
Try deleting a department and observe what happens to the employees under that department.
`








mysql> CREATE TABLE departments( departmentid INT PRIMARY KEY, deptname VARCHAR(20) UNIQUE NOT NULL);

-- Query OK, 0 rows affected (0.12 sec)




mysql> DESC departments;

-- +--------------+-------------+------+-----+---------+-------+
-- | Field        | Type        | Null | Key | Default | Extra |
-- +--------------+-------------+------+-----+---------+-------+
-- | departmentid | int         | NO   | PRI | NULL    |       |
-- | deptname     | varchar(20) | NO   | UNI | NULL    |       |
-- +--------------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.03 sec)




mysql> CREATE TABLE employees(employeeid INT PRIMARY KEY, empname VARCHAR(20) NOT NULL, empsalary DECIMAL(10,2) NOT NULL, departmentid INT, FOREIGN KEY(departmentid) REFERENCES departments(departmentid) ON DELETE CASCADE);

-- Query OK, 0 rows affected (0.04 sec)




mysql> DESC employees;

-- +--------------+---------------+------+-----+---------+-------+
-- | Field        | Type          | Null | Key | Default | Extra |
-- +--------------+---------------+------+-----+---------+-------+
-- | employeeid   | int           | NO   | PRI | NULL    |       |
-- | empname      | varchar(20)   | NO   |     | NULL    |       |
-- | empsalary    | decimal(10,2) | NO   |     | NULL    |       |
-- | departmentid | int           | YES  | MUL | NULL    |       |
-- +--------------+---------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)




mysql> INSERT INTO departments VALUES( 101, 'HR'), (102, 'IT'), (103, 'Sales');

-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM departments;

-- +--------------+----------+
-- | departmentid | deptname |
-- +--------------+----------+
-- |          101 | HR       |
-- |          102 | IT       |
-- |          103 | Sales    |
-- +--------------+----------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO employees VALUES(1, 'rashmika', 90000, 101);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO employees VALUES(2, 'deepika', 78000, 102);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO employees VALUES(3, 'rina', 87000, 101);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO employees VALUES(4, 'meera', 64000, 103);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO employees VALUES(5, 'radha', 94000, 102);

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM employees;

-- +------------+----------+-----------+--------------+
-- | employeeid | empname  | empsalary | departmentid |
-- +------------+----------+-----------+--------------+
-- |          1 | rashmika |  90000.00 |          101 |
-- |          2 | deepika  |  78000.00 |          102 |
-- |          3 | rina     |  87000.00 |          101 |
-- |          4 | meera    |  64000.00 |          103 |
-- |          5 | radha    |  94000.00 |          102 |
-- +------------+----------+-----------+--------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT  employeeid, empname, empsalary, deptname FROM employees, departments WHERE employees.departmentid = departments.departmentid;

-- +------------+----------+-----------+----------+
-- | employeeid | empname  | empsalary | deptname |
-- +------------+----------+-----------+----------+
-- |          1 | rashmika |  90000.00 | HR       |
-- |          3 | rina     |  87000.00 | HR       |
-- |          2 | deepika  |  78000.00 | IT       |
-- |          5 | radha    |  94000.00 | IT       |
-- |          4 | meera    |  64000.00 | Sales    |
-- +------------+----------+-----------+----------+
-- 5 rows in set (0.00 sec)


mysql> UPDATE  employees SET departmentid = 101 WHERE employeeid = 5;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM employees;

-- +------------+----------+-----------+--------------+
-- | employeeid | empname  | empsalary | departmentid |
-- +------------+----------+-----------+--------------+
-- |          1 | rashmika |  90000.00 |          101 |
-- |          2 | deepika  |  78000.00 |          102 |
-- |          3 | rina     |  87000.00 |          101 |
-- |          4 | meera    |  64000.00 |          103 |
-- |          5 | radha    |  94000.00 |          101 |
-- +------------+----------+-----------+--------------+
-- 5 rows in set (0.00 sec)




mysql> UPDATE  employees SET departmentid = 102 WHERE employeeid = 4;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM employees;

-- +------------+----------+-----------+--------------+
-- | employeeid | empname  | empsalary | departmentid |
-- +------------+----------+-----------+--------------+
-- |          1 | rashmika |  90000.00 |          101 |
-- |          2 | deepika  |  78000.00 |          102 |
-- |          3 | rina     |  87000.00 |          101 |
-- |          4 | meera    |  64000.00 |          102 |
-- |          5 | radha    |  94000.00 |          101 |
-- +------------+----------+-----------+--------------+
-- 5 rows in set (0.00 sec)




mysql> UPDATE  employees SET departmentid = 105 WHERE employeeid = 4;

-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`assignments`.`employees`, CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `departments` (`departmentid`) ON DELETE CASCADE)




mysql> UPDATE  employees SET departmentid = 103 WHERE employeeid = 5;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM employees;

-- +------------+----------+-----------+--------------+
-- | employeeid | empname  | empsalary | departmentid |
-- +------------+----------+-----------+--------------+
-- |          1 | rashmika |  90000.00 |          101 |
-- |          2 | deepika  |  78000.00 |          102 |
-- |          3 | rina     |  87000.00 |          101 |
-- |          4 | meera    |  64000.00 |          102 |
-- |          5 | radha    |  94000.00 |          103 |
-- +------------+----------+-----------+--------------+
-- 5 rows in set (0.00 sec)




mysql> DELETE FROM departments WHERE departmentid = 101;

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM departments;

-- +--------------+----------+
-- | departmentid | deptname |
-- +--------------+----------+
-- |          102 | IT       |
-- |          103 | Sales    |
-- +--------------+----------+
-- 2 rows in set (0.00 sec)




mysql> SELECT * FROM employees;

-- +------------+---------+-----------+--------------+
-- | employeeid | empname | empsalary | departmentid |
-- +------------+---------+-----------+--------------+
-- |          2 | deepika |  78000.00 |          102 |
-- |          4 | meera   |  64000.00 |          102 |
-- |          5 | radha   |  94000.00 |          103 |
-- +------------+---------+-----------+--------------+
-- 3 rows in set (0.00 sec)




mysql> DELETE FROM departments WHERE deptname = 'Sales';

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM departments;

-- +--------------+----------+
-- | departmentid | deptname |
-- +--------------+----------+
-- |          102 | IT       |
-- +--------------+----------+
-- 1 row in set (0.00 sec)




mysql> SELECT * FROM employees;

-- +------------+---------+-----------+--------------+
-- | employeeid | empname | empsalary | departmentid |
-- +------------+---------+-----------+--------------+
-- |          2 | deepika |  78000.00 |          102 |
-- |          4 | meera   |  64000.00 |          102 |
-- +------------+---------+-----------+--------------+
-- 2 rows in set (0.00 sec)
