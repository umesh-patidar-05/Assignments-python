`
# 📘 SQL ASSIGNMENT — DATE AND TIME FUNCTIONS

Employee Attendance & HR Management System

A company wants to maintain employee and attendance information in a **single table**. The HR department wants to analyze employee **joining dates, birth dates, project dates, attendance dates, login times, logout times, and working duration** using SQL Date & Time functions.

# Create a Table

Create a table with these columns:

| Column               | Data Type                        |
| -------------------- | -------------------------------- |
| 'attendance_id'      | INT, Primary Key, Auto Increment |
| 'employee_id'        | INT                              |
| 'employee_name'      | VARCHAR(50)                      |
| 'department'         | VARCHAR(30)                      |
| 'city'               | VARCHAR(30)                      |
| 'date_of_birth'      | DATE                             |
| 'joining_date'       | DATE                             |
| 'project_start_date' | DATETIME                         |
| 'attendance_date'    | DATE                             |
| 'login_time'         | DATETIME                         |
| 'logout_time'        | DATETIME                         |
| 'salary'             | DECIMAL(10,2)                    |
| 'attendance_status'  | VARCHAR(20)                      |

---

# Data

Insert at least **10 attendance records** for employees from different departments and cities.

Make sure the data contains:

* Different birth dates
* Different joining dates
* Different project start dates
* Different attendance dates
* Different login/logout times
* 'Present' and 'Late' attendance statuses
* Employees with different salaries
* At least two records where the same employee appears on different attendance dates

---

# Questions

## 🟢 Basic Date Functions

### Q1. DAY()

Display 'employee_name', 'date_of_birth', and the **day of birth** using the 'DAY()' function.

---

### Q2. DAYOFMONTH()

Display 'employee_name', 'attendance_date', and the **day of the month** on which the employee attended.

---

### Q3. MONTH()

Display 'employee_name', 'date_of_birth', and the **birth month number** using 'MONTH()'.

---

### Q4. MONTH()

Find employees whose **attendance month is August** using 'MONTH()'.

---

### Q5. YEAR()

Display 'employee_name', 'joining_date', and the **year in which the employee joined**.

---

### Q6. YEAR()

Find employees whose **attendance records belong to the year 2026**.

---

### Q7. QUARTER()

Display 'employee_name', 'joining_date', and the **quarter in which the employee joined** using 'QUARTER()'.

---

### Q8. WEEK()

Display 'employee_name', 'attendance_date', and the **week number of their attendance date** using 'WEEK()'.

---

### Q9. DAYOFWEEK()

Display 'employee_name', 'attendance_date', and the **weekday number** of their attendance date using 'DAYOFWEEK()'.

---

### Q10. DAYOFWEEK()

Find attendance records where the employee attended on a **Saturday or Sunday**.

---

# 🟡 Date Name Functions

### Q11. MONTHNAME()

Display 'employee_name', 'joining_date', and the **name of the joining month** using 'MONTHNAME()'.

---

### Q12. DAYNAME()

Display 'employee_name', 'attendance_date', and the **name of the attendance day** using 'DAYNAME()'.

---

### Q13. MONTHNAME()

Display 'employee_name', 'date_of_birth', and the **name of the birth month**.

---

### Q14. DAYNAME()

Find employees whose attendance occurred on a **Monday**.

---

### Q15. DAYNAME() + MONTHNAME()

Display 'employee_name', 'attendance_date', **day name**, and **month name**.

---

# 🔵 Current Date & Time Functions

### Q16. CURDATE()

Display the **current date** using 'CURDATE()'.

---

### Q17. CURRENT_DATE()

Display the current date using 'CURRENT_DATE()'.

---

### Q18. NOW()

Display the **current date and time** using 'NOW()'.

---

### Q19. CURRENT_TIMESTAMP()

Display the **current date and time** using 'CURRENT_TIMESTAMP()'.

---

### Q20. NOW() vs CURRENT_TIMESTAMP()

Display both 'NOW()' and 'CURRENT_TIMESTAMP()' in the same query and observe the result.

---

### Q21. CURTIME()

Display the **current time** using 'CURTIME()'.

---

### Q22. CURRENT_TIME()

Display the current time using 'CURRENT_TIME()'.

---

### Q23. Date and Time Components

Display the **current date, current time, and current date-time** using appropriate MySQL functions.

---

# 🟠 EXTRACT() Function

### Q24. EXTRACT()

Extract the **year** from 'joining_date'.

---

### Q25. EXTRACT()

Extract the **month** from 'date_of_birth'.

---

### Q26. EXTRACT()

Extract the **day** from 'attendance_date'.

---

### Q27. EXTRACT()

Extract the **hour** from 'login_time'.

---

### Q28. EXTRACT()

Extract the **minute** from 'login_time'.

---

### Q29. EXTRACT()

Extract the **second** from 'login_time'.

---

# 🟣 Date Addition & Subtraction

### Q30. DATE_ADD()

Calculate the date that occurs **30 days after each employee's joining date**.

---

### Q31. DATE_ADD()

Calculate the **first work anniversary** of every employee.

---

### Q32. DATE_ADD()

Calculate the date exactly **3 months after each employee's project start date**.

---

### Q33. DATE_SUB()

Calculate the date **30 days before each attendance date**.

---

### Q34. DATE_SUB()

Calculate the date **1 year before each employee's joining date**.

---

### Q35. DATE_ADD()

Assuming the company's retirement age is **60 years**, calculate the expected retirement date of every employee.

---

# 🔴 Date Difference Functions

### Q36. DATEDIFF()

Calculate the **number of days between the employee's joining date and attendance date**.

---

### Q37. DATEDIFF()

Calculate the **number of days between the employee's joining date and the current date**.

---

### Q38. TIMESTAMPDIFF()

Calculate the approximate **number of completed years of experience** of every employee based on their joining date.

---

### Q39. TIMESTAMPDIFF()

Calculate the approximate **age of every employee** using their date of birth.

---

### Q40. TIMESTAMPDIFF()

Calculate the total **working hours** between 'login_time' and 'logout_time'.

---

### Q41. TIMESTAMPDIFF()

Calculate the total **working minutes** between 'login_time' and 'logout_time'.

---

### Q42. TIMEDIFF()

Calculate the **working duration** between 'login_time' and 'logout_time' using 'TIMEDIFF()'.

---

# 🟤 Date & Time Formatting

### Q43. DATE()

Display 'employee_name', 'project_start_date', and only the **date portion** of 'project_start_date'.

---

### Q44. TIME()

Display 'employee_name', 'login_time', and only the **time portion** of 'login_time'.

---

### Q45. DATE_FORMAT()

Display the employee's joining date in the format:

**DD-MM-YYYY**

Example:

'15-04-2022'

---

### Q46. DATE_FORMAT()

Display the attendance date in the format:

**DD Month YYYY**

Example:

'05 August 2026'

---

### Q47. DATE_FORMAT()

Display the login time in **12-hour format with AM/PM**.

Example:

'09:30:00 AM'

---

# 🟤 Other MySQL Date Functions

### Q48. LAST_DAY()

Display 'employee_name', 'joining_date', and the **last date of the month in which the employee joined**.

---

### Q49. STR_TO_DATE()

Convert the following strings into MySQL date values using 'STR_TO_DATE()':

```text
'2026-08-15'
'2025-12-25'
'2024-02-29'
```

---

# 🏆 Q50. Final HR Attendance Report

Prepare a complete attendance report containing:

* Employee Name
* Department
* Attendance Date
* Day Name
* Login Time
* Logout Time
* Working Hours
* Working Minutes
* Attendance Status
* Joining Date
* Years of Experience

Use appropriate **MySQL Date & Time functions** such as:

'DAYNAME()', 'TIME()', 'TIMESTAMPDIFF()', 'DATE_FORMAT()', etc.
`












mysql> CREATE TABLE employee_management (
    -> attendance_id INT Primary Key Auto_Increment,
    -> employee_id INT,
    -> employee_name VARCHAR(50),
    -> department VARCHAR(30),
    -> city VARCHAR(30),
    -> date_of_birth DATE,
    -> joining_date DATE,
    -> project_start_date DATETIME,
    -> attendance_date DATE,
    -> login_time DATETIME,
    -> logout_time DATETIME,
    -> salary DECIMAL(10,2),
    -> attendance_status VARCHAR(20)
    -> );

-- Query OK, 0 rows affected (0.03 sec)




mysql> DESC employee_management;

-- +--------------------+---------------+------+-----+---------+----------------+
-- | Field              | Type          | Null | Key | Default | Extra          |
-- +--------------------+---------------+------+-----+---------+----------------+
-- | attendance_id      | int           | NO   | PRI | NULL    | auto_increment |
-- | employee_id        | int           | YES  |     | NULL    |                |
-- | employee_name      | varchar(50)   | YES  |     | NULL    |                |
-- | department         | varchar(30)   | YES  |     | NULL    |                |
-- | city               | varchar(30)   | YES  |     | NULL    |                |
-- | date_of_birth      | date          | YES  |     | NULL    |                |
-- | joining_date       | date          | YES  |     | NULL    |                |
-- | project_start_date | datetime      | YES  |     | NULL    |                |
-- | attendance_date    | date          | YES  |     | NULL    |                |
-- | login_time         | datetime      | YES  |     | NULL    |                |
-- | logout_time        | datetime      | YES  |     | NULL    |                |
-- | salary             | decimal(10,2) | YES  |     | NULL    |                |
-- | attendance_status  | varchar(20)   | YES  |     | NULL    |                |
-- +--------------------+---------------+------+-----+---------+----------------+
-- 13 rows in set (0.00 sec)




mysql> INSERT INTO employee_management( employee_id, employee_name, department, city, date_of_birth, joining_date, project_start_date, attendance_date, login_time, logout_time, salary, attendance_status)
    -> VALUES
    -> (1, 'Amit Sharma', 'IT', 'Indore', '1998-04-15', '2022-06-10', '2026-01-05 09:00:00', '2026-08-03', '2026-08-03 09:15:20', '2026-08-03 18:05:30', 55000.00, 'Late'),
    -> (2, 'Priya Verma', 'HR', 'Bhopal', '1996-08-22', '2020-03-18', '2026-02-10 10:30:00', '2026-08-04', '2026-08-04 09:05:10', '2026-08-04 18:00:15', 62000.00, 'Present'),
    -> (3, 'Rahul Patel', 'Finance', 'Delhi', '1995-01-12', '2019-07-25', '2026-03-15 11:00:00', '2026-08-05', '2026-08-05 09:20:45', '2026-08-05 18:15:30', 68000.00, 'Late'),
    -> (4, 'Neha Singh', 'Marketing', 'Mumbai', '1999-11-30', '2023-01-09', '2026-04-20 09:45:00', '2026-08-06', '2026-08-06 08:55:30', '2026-08-06 17:50:20', 48000.00, 'Present'),
    -> (5, 'Rohit Jain', 'IT', 'Pune', '1997-06-18', '2021-11-15', '2026-05-12 10:15:00', '2026-08-07', '2026-08-07 09:10:25', '2026-08-07 18:10:40', 72000.00, 'Late'),
    -> (6, 'Sneha Gupta', 'Sales', 'Jaipur', '2000-02-25', '2024-02-12', '2026-06-01 09:30:00', '2026-08-08', '2026-08-08 08:50:15', '2026-08-08 17:45:30', 45000.00, 'Present'),
    -> (7, 'Vikas Yadav', 'Finance', 'Indore', '1994-09-05', '2018-05-20', '2026-01-18 10:00:00', '2026-08-10', '2026-08-10 09:25:40', '2026-08-10 18:20:10', 80000.00, 'Late'),
    -> (8, 'Pooja Mehta', 'HR', 'Bhopal', '1998-12-14', '2022-09-01', '2026-02-25 11:15:00', '2026-08-11', '2026-08-11 09:00:00', '2026-08-11 18:05:45', 58000.00, 'Present'),
    -> (9, 'Karan Joshi', 'IT', 'Delhi', '1996-03-28', '2020-12-10', '2026-03-30 09:20:00', '2026-08-12', '2026-08-12 09:30:15', '2026-08-12 18:25:30', 75000.00, 'Late'),
    -> (10, 'Anjali Patel', 'Sales', 'Pune', '2001-07-19', '2024-06-17', '2026-05-20 10:45:00', '2026-08-13', '2026-08-13 08:55:20', '2026-08-13 17:40:15', 47000.00, 'Present'),
    -> (1, 'Amit Sharma', 'IT', 'Indore', '1998-04-15', '2022-06-10', '2026-01-05 09:00:00', '2026-08-17', '2026-08-17 09:12:35', '2026-08-17 18:08:20', 55000.00, 'Late'),
    -> (5, 'Rohit Jain', 'IT', 'Pune', '1997-06-18', '2021-11-15', '2026-05-12 10:15:00', '2026-08-18', '2026-08-18 08:58:10', '2026-08-18 18:02:45', 72000.00, 'Present');

-- Query OK, 12 rows affected (0.01 sec)
-- Records: 12  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee_management;

-- +---------------+-------------+---------------+------------+--------+---------------+--------------+---------------------+-----------------+---------------------+---------------------+----------+-------------------+
-- | attendance_id | employee_id | employee_name | department | city   | date_of_birth | joining_date | project_start_date  | attendance_date | login_time          | logout_time         | salary   | attendance_status |
-- +---------------+-------------+---------------+------------+--------+---------------+--------------+---------------------+-----------------+---------------------+---------------------+----------+-------------------+
-- |             1 |           1 | Amit Sharma   | IT         | Indore | 1998-04-15    | 2022-06-10   | 2026-01-05 09:00:00 | 2026-08-03      | 2026-08-03 09:15:20 | 2026-08-03 18:05:30 | 55000.00 | Late              |
-- |             2 |           2 | Priya Verma   | HR         | Bhopal | 1996-08-22    | 2020-03-18   | 2026-02-10 10:30:00 | 2026-08-04      | 2026-08-04 09:05:10 | 2026-08-04 18:00:15 | 62000.00 | Present           |
-- |             3 |           3 | Rahul Patel   | Finance    | Delhi  | 1995-01-12    | 2019-07-25   | 2026-03-15 11:00:00 | 2026-08-05      | 2026-08-05 09:20:45 | 2026-08-05 18:15:30 | 68000.00 | Late              |
-- |             4 |           4 | Neha Singh    | Marketing  | Mumbai | 1999-11-30    | 2023-01-09   | 2026-04-20 09:45:00 | 2026-08-06      | 2026-08-06 08:55:30 | 2026-08-06 17:50:20 | 48000.00 | Present           |
-- |             5 |           5 | Rohit Jain    | IT         | Pune   | 1997-06-18    | 2021-11-15   | 2026-05-12 10:15:00 | 2026-08-07      | 2026-08-07 09:10:25 | 2026-08-07 18:10:40 | 72000.00 | Late              |
-- |             6 |           6 | Sneha Gupta   | Sales      | Jaipur | 2000-02-25    | 2024-02-12   | 2026-06-01 09:30:00 | 2026-08-08      | 2026-08-08 08:50:15 | 2026-08-08 17:45:30 | 45000.00 | Present           |
-- |             7 |           7 | Vikas Yadav   | Finance    | Indore | 1994-09-05    | 2018-05-20   | 2026-01-18 10:00:00 | 2026-08-10      | 2026-08-10 09:25:40 | 2026-08-10 18:20:10 | 80000.00 | Late              |
-- |             8 |           8 | Pooja Mehta   | HR         | Bhopal | 1998-12-14    | 2022-09-01   | 2026-02-25 11:15:00 | 2026-08-11      | 2026-08-11 09:00:00 | 2026-08-11 18:05:45 | 58000.00 | Present           |
-- |             9 |           9 | Karan Joshi   | IT         | Delhi  | 1996-03-28    | 2020-12-10   | 2026-03-30 09:20:00 | 2026-08-12      | 2026-08-12 09:30:15 | 2026-08-12 18:25:30 | 75000.00 | Late              |
-- |            10 |          10 | Anjali Patel  | Sales      | Pune   | 2001-07-19    | 2024-06-17   | 2026-05-20 10:45:00 | 2026-08-13      | 2026-08-13 08:55:20 | 2026-08-13 17:40:15 | 47000.00 | Present           |
-- |            11 |           1 | Amit Sharma   | IT         | Indore | 1998-04-15    | 2022-06-10   | 2026-01-05 09:00:00 | 2026-08-17      | 2026-08-17 09:12:35 | 2026-08-17 18:08:20 | 55000.00 | Late              |
-- |            12 |           5 | Rohit Jain    | IT         | Pune   | 1997-06-18    | 2021-11-15   | 2026-05-12 10:15:00 | 2026-08-18      | 2026-08-18 08:58:10 | 2026-08-18 18:02:45 | 72000.00 | Present           |
-- +---------------+-------------+---------------+------------+--------+---------------+--------------+---------------------+-----------------+---------------------+---------------------+----------+-------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, date_of_birth, DAY(date_of_birth) AS day_of_birth FROM employee_management;

-- +---------------+---------------+--------------+
-- | employee_name | date_of_birth | day_of_birth |
-- +---------------+---------------+--------------+
-- | Amit Sharma   | 1998-04-15    |           15 |
-- | Priya Verma   | 1996-08-22    |           22 |
-- | Rahul Patel   | 1995-01-12    |           12 |
-- | Neha Singh    | 1999-11-30    |           30 |
-- | Rohit Jain    | 1997-06-18    |           18 |
-- | Sneha Gupta   | 2000-02-25    |           25 |
-- | Vikas Yadav   | 1994-09-05    |            5 |
-- | Pooja Mehta   | 1998-12-14    |           14 |
-- | Karan Joshi   | 1996-03-28    |           28 |
-- | Anjali Patel  | 2001-07-19    |           19 |
-- | Amit Sharma   | 1998-04-15    |           15 |
-- | Rohit Jain    | 1997-06-18    |           18 |
-- +---------------+---------------+--------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, attendance_date, DAYOFMONTH(attendance_date) AS day_of_the_month FROM employee_management;

-- +---------------+-----------------+------------------+
-- | employee_name | attendance_date | day_of_the_month |
-- +---------------+-----------------+------------------+
-- | Amit Sharma   | 2026-08-03      |                3 |
-- | Priya Verma   | 2026-08-04      |                4 |
-- | Rahul Patel   | 2026-08-05      |                5 |
-- | Neha Singh    | 2026-08-06      |                6 |
-- | Rohit Jain    | 2026-08-07      |                7 |
-- | Sneha Gupta   | 2026-08-08      |                8 |
-- | Vikas Yadav   | 2026-08-10      |               10 |
-- | Pooja Mehta   | 2026-08-11      |               11 |
-- | Karan Joshi   | 2026-08-12      |               12 |
-- | Anjali Patel  | 2026-08-13      |               13 |
-- | Amit Sharma   | 2026-08-17      |               17 |
-- | Rohit Jain    | 2026-08-18      |               18 |
-- +---------------+-----------------+------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, date_of_birth, MONTH(date_of_birth) AS_birth_month_number FROM employee_management;

-- +---------------+---------------+-----------------------+
-- | employee_name | date_of_birth | AS_birth_month_number |
-- +---------------+---------------+-----------------------+
-- | Amit Sharma   | 1998-04-15    |                     4 |
-- | Priya Verma   | 1996-08-22    |                     8 |
-- | Rahul Patel   | 1995-01-12    |                     1 |
-- | Neha Singh    | 1999-11-30    |                    11 |
-- | Rohit Jain    | 1997-06-18    |                     6 |
-- | Sneha Gupta   | 2000-02-25    |                     2 |
-- | Vikas Yadav   | 1994-09-05    |                     9 |
-- | Pooja Mehta   | 1998-12-14    |                    12 |
-- | Karan Joshi   | 1996-03-28    |                     3 |
-- | Anjali Patel  | 2001-07-19    |                     7 |
-- | Amit Sharma   | 1998-04-15    |                     4 |
-- | Rohit Jain    | 1997-06-18    |                     6 |
-- +---------------+---------------+-----------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name , attendance_date FROM employee_management WHERE MONTH(attendance_date) = 8;

-- +---------------+-----------------+
-- | employee_name | attendance_date |
-- +---------------+-----------------+
-- | Amit Sharma   | 2026-08-03      |
-- | Priya Verma   | 2026-08-04      |
-- | Rahul Patel   | 2026-08-05      |
-- | Neha Singh    | 2026-08-06      |
-- | Rohit Jain    | 2026-08-07      |
-- | Sneha Gupta   | 2026-08-08      |
-- | Vikas Yadav   | 2026-08-10      |
-- | Pooja Mehta   | 2026-08-11      |
-- | Karan Joshi   | 2026-08-12      |
-- | Anjali Patel  | 2026-08-13      |
-- | Amit Sharma   | 2026-08-17      |
-- | Rohit Jain    | 2026-08-18      |
-- +---------------+-----------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, joining_date, YEAR(joining_date) FROM employee_management;

-- +---------------+--------------+--------------------+
-- | employee_name | joining_date | YEAR(joining_date) |
-- +---------------+--------------+--------------------+
-- | Amit Sharma   | 2022-06-10   |               2022 |
-- | Priya Verma   | 2020-03-18   |               2020 |
-- | Rahul Patel   | 2019-07-25   |               2019 |
-- | Neha Singh    | 2023-01-09   |               2023 |
-- | Rohit Jain    | 2021-11-15   |               2021 |
-- | Sneha Gupta   | 2024-02-12   |               2024 |
-- | Vikas Yadav   | 2018-05-20   |               2018 |
-- | Pooja Mehta   | 2022-09-01   |               2022 |
-- | Karan Joshi   | 2020-12-10   |               2020 |
-- | Anjali Patel  | 2024-06-17   |               2024 |
-- | Amit Sharma   | 2022-06-10   |               2022 |
-- | Rohit Jain    | 2021-11-15   |               2021 |
-- +---------------+--------------+--------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, attendance_date FROM employee_management WHERE YEAR(attendance_date) = 2026;

-- +---------------+-----------------+
-- | employee_name | attendance_date |
-- +---------------+-----------------+
-- | Amit Sharma   | 2026-08-03      |
-- | Priya Verma   | 2026-08-04      |
-- | Rahul Patel   | 2026-08-05      |
-- | Neha Singh    | 2026-08-06      |
-- | Rohit Jain    | 2026-08-07      |
-- | Sneha Gupta   | 2026-08-08      |
-- | Vikas Yadav   | 2026-08-10      |
-- | Pooja Mehta   | 2026-08-11      |
-- | Karan Joshi   | 2026-08-12      |
-- | Anjali Patel  | 2026-08-13      |
-- | Amit Sharma   | 2026-08-17      |
-- | Rohit Jain    | 2026-08-18      |
-- +---------------+-----------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, joining_date, QUARTER(joining_date) FROM employee_management;

-- +---------------+--------------+-----------------------+
-- | employee_name | joining_date | QUARTER(joining_date) |
-- +---------------+--------------+-----------------------+
-- | Amit Sharma   | 2022-06-10   |                     2 |
-- | Priya Verma   | 2020-03-18   |                     1 |
-- | Rahul Patel   | 2019-07-25   |                     3 |
-- | Neha Singh    | 2023-01-09   |                     1 |
-- | Rohit Jain    | 2021-11-15   |                     4 |
-- | Sneha Gupta   | 2024-02-12   |                     1 |
-- | Vikas Yadav   | 2018-05-20   |                     2 |
-- | Pooja Mehta   | 2022-09-01   |                     3 |
-- | Karan Joshi   | 2020-12-10   |                     4 |
-- | Anjali Patel  | 2024-06-17   |                     2 |
-- | Amit Sharma   | 2022-06-10   |                     2 |
-- | Rohit Jain    | 2021-11-15   |                     4 |
-- +---------------+--------------+-----------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, attendance_date, WEEK(attendance_date) FROM employee_management;

-- +---------------+-----------------+-----------------------+
-- | employee_name | attendance_date | WEEK(attendance_date) |
-- +---------------+-----------------+-----------------------+
-- | Amit Sharma   | 2026-08-03      |                    31 |
-- | Priya Verma   | 2026-08-04      |                    31 |
-- | Rahul Patel   | 2026-08-05      |                    31 |
-- | Neha Singh    | 2026-08-06      |                    31 |
-- | Rohit Jain    | 2026-08-07      |                    31 |
-- | Sneha Gupta   | 2026-08-08      |                    31 |
-- | Vikas Yadav   | 2026-08-10      |                    32 |
-- | Pooja Mehta   | 2026-08-11      |                    32 |
-- | Karan Joshi   | 2026-08-12      |                    32 |
-- | Anjali Patel  | 2026-08-13      |                    32 |
-- | Amit Sharma   | 2026-08-17      |                    33 |
-- | Rohit Jain    | 2026-08-18      |                    33 |
-- +---------------+-----------------+-----------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, attendance_date, DAYOFWEEK(attendance_date) FROM employee_management;

-- +---------------+-----------------+----------------------------+
-- | employee_name | attendance_date | DAYOFWEEK(attendance_date) |
-- +---------------+-----------------+----------------------------+
-- | Amit Sharma   | 2026-08-03      |                          2 |
-- | Priya Verma   | 2026-08-04      |                          3 |
-- | Rahul Patel   | 2026-08-05      |                          4 |
-- | Neha Singh    | 2026-08-06      |                          5 |
-- | Rohit Jain    | 2026-08-07      |                          6 |
-- | Sneha Gupta   | 2026-08-08      |                          7 |
-- | Vikas Yadav   | 2026-08-10      |                          2 |
-- | Pooja Mehta   | 2026-08-11      |                          3 |
-- | Karan Joshi   | 2026-08-12      |                          4 |
-- | Anjali Patel  | 2026-08-13      |                          5 |
-- | Amit Sharma   | 2026-08-17      |                          2 |
-- | Rohit Jain    | 2026-08-18      |                          3 |
-- +---------------+-----------------+----------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, attendance_date FROM employee_management WHERE DAYOFWEEK(attendance_date) IN( 1, 7);

-- +---------------+-----------------+
-- | employee_name | attendance_date |
-- +---------------+-----------------+
-- | Sneha Gupta   | 2026-08-08      |
-- +---------------+-----------------+
-- 1 row in set (0.00 sec)





mysql> SELECT employee_name, joining_date, MONTHNAME(joining_date) FROM employee_management;

-- +---------------+--------------+-------------------------+
-- | employee_name | joining_date | MONTHNAME(joining_date) |
-- +---------------+--------------+-------------------------+
-- | Amit Sharma   | 2022-06-10   | June                    |
-- | Priya Verma   | 2020-03-18   | March                   |
-- | Rahul Patel   | 2019-07-25   | July                    |
-- | Neha Singh    | 2023-01-09   | January                 |
-- | Rohit Jain    | 2021-11-15   | November                |
-- | Sneha Gupta   | 2024-02-12   | February                |
-- | Vikas Yadav   | 2018-05-20   | May                     |
-- | Pooja Mehta   | 2022-09-01   | September               |
-- | Karan Joshi   | 2020-12-10   | December                |
-- | Anjali Patel  | 2024-06-17   | June                    |
-- | Amit Sharma   | 2022-06-10   | June                    |
-- | Rohit Jain    | 2021-11-15   | November                |
-- +---------------+--------------+-------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, attendance_date, DAYNAME(attendance_date) FROM employee_management;

-- +---------------+-----------------+--------------------------+
-- | employee_name | attendance_date | DAYNAME(attendance_date) |
-- +---------------+-----------------+--------------------------+
-- | Amit Sharma   | 2026-08-03      | Monday                   |
-- | Priya Verma   | 2026-08-04      | Tuesday                  |
-- | Rahul Patel   | 2026-08-05      | Wednesday                |
-- | Neha Singh    | 2026-08-06      | Thursday                 |
-- | Rohit Jain    | 2026-08-07      | Friday                   |
-- | Sneha Gupta   | 2026-08-08      | Saturday                 |
-- | Vikas Yadav   | 2026-08-10      | Monday                   |
-- | Pooja Mehta   | 2026-08-11      | Tuesday                  |
-- | Karan Joshi   | 2026-08-12      | Wednesday                |
-- | Anjali Patel  | 2026-08-13      | Thursday                 |
-- | Amit Sharma   | 2026-08-17      | Monday                   |
-- | Rohit Jain    | 2026-08-18      | Tuesday                  |
-- +---------------+-----------------+--------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT employee_name, date_of_birth, MONTHNAME(date_of_birth) FROM employee_management;

-- +---------------+---------------+--------------------------+
-- | employee_name | date_of_birth | MONTHNAME(date_of_birth) |
-- +---------------+---------------+--------------------------+
-- | Amit Sharma   | 1998-04-15    | April                    |
-- | Priya Verma   | 1996-08-22    | August                   |
-- | Rahul Patel   | 1995-01-12    | January                  |
-- | Neha Singh    | 1999-11-30    | November                 |
-- | Rohit Jain    | 1997-06-18    | June                     |
-- | Sneha Gupta   | 2000-02-25    | February                 |
-- | Vikas Yadav   | 1994-09-05    | September                |
-- | Pooja Mehta   | 1998-12-14    | December                 |
-- | Karan Joshi   | 1996-03-28    | March                    |
-- | Anjali Patel  | 2001-07-19    | July                     |
-- | Amit Sharma   | 1998-04-15    | April                    |
-- | Rohit Jain    | 1997-06-18    | June                     |
-- +---------------+---------------+--------------------------+
-- 12 rows in set (0.00 sec)




mysql>  SELECT employee_name, attendance_date FROM employee_management WHERE DAYNAME(attendance_date) = 'Monday';

-- +---------------+-----------------+
-- | employee_name | attendance_date |
-- +---------------+-----------------+
-- | Amit Sharma   | 2026-08-03      |
-- | Vikas Yadav   | 2026-08-10      |
-- | Amit Sharma   | 2026-08-17      |
-- +---------------+-----------------+
-- 3 rows in set (0.00 sec)




mysql>  SELECT employee_name, attendance_date, DAYNAME(attendance_date), MONTHNAME(attendance_date) FROM employee_management;

-- +---------------+-----------------+--------------------------+----------------------------+
-- | employee_name | attendance_date | DAYNAME(attendance_date) | MONTHNAME(attendance_date) |
-- +---------------+-----------------+--------------------------+----------------------------+
-- | Amit Sharma   | 2026-08-03      | Monday                   | August                     |
-- | Priya Verma   | 2026-08-04      | Tuesday                  | August                     |
-- | Rahul Patel   | 2026-08-05      | Wednesday                | August                     |
-- | Neha Singh    | 2026-08-06      | Thursday                 | August                     |
-- | Rohit Jain    | 2026-08-07      | Friday                   | August                     |
-- | Sneha Gupta   | 2026-08-08      | Saturday                 | August                     |
-- | Vikas Yadav   | 2026-08-10      | Monday                   | August                     |
-- | Pooja Mehta   | 2026-08-11      | Tuesday                  | August                     |
-- | Karan Joshi   | 2026-08-12      | Wednesday                | August                     |
-- | Anjali Patel  | 2026-08-13      | Thursday                 | August                     |
-- | Amit Sharma   | 2026-08-17      | Monday                   | August                     |
-- | Rohit Jain    | 2026-08-18      | Tuesday                  | August                     |
-- +---------------+-----------------+--------------------------+----------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT CURDATE();

-- +------------+
-- | CURDATE()  |
-- +------------+
-- | 2026-09-03 |
-- +------------+
-- 1 row in set (0.00 sec)




mysql> SELECT CURRENT_DATE();

-- +----------------+
-- | CURRENT_DATE() |
-- +----------------+
-- | 2026-09-03     |
-- +----------------+
-- 1 row in set (0.00 sec)




mysql> SELECT NOW();

-- +---------------------+
-- | NOW()               |
-- +---------------------+
-- | 2026-09-03 02:18:00 |
-- +---------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT  CURRENT_TIMESTAMP();

-- +---------------------+
-- | CURRENT_TIMESTAMP() |
-- +---------------------+
-- | 2026-09-03 02:21:59 |
-- +---------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT NOW(), CURRENT_TIMESTAMP();

-- +---------------------+---------------------+
-- | NOW()               | CURRENT_TIMESTAMP() |
-- +---------------------+---------------------+
-- | 2026-09-03 02:22:52 | 2026-09-03 02:22:52 |
-- +---------------------+---------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT CURTIME();

-- +-----------+
-- | CURTIME() |
-- +-----------+
-- | 02:23:28  |
-- +-----------+
-- 1 row in set (0.00 sec)




mysql> SELECT CURRENT_TIME();

-- +----------------+
-- | CURRENT_TIME() |
-- +----------------+
-- | 02:24:55       |
-- +----------------+
-- 1 row in set (0.00 sec)




mysql> SELECT CURRENT_DATE, CURRENT_TIME, NOW();

-- +--------------+--------------+---------------------+
-- | CURRENT_DATE | CURRENT_TIME | NOW()               |
-- +--------------+--------------+---------------------+
-- | 2026-09-03   | 02:26:47     | 2026-09-03 02:26:47 |
-- +--------------+--------------+---------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT joining_date , EXTRACT(YEAR FROM joining_date) FROM employee_management;

-- +--------------+---------------------------------+
-- | joining_date | EXTRACT(YEAR FROM joining_date) |
-- +--------------+---------------------------------+
-- | 2022-06-10   |                            2022 |
-- | 2020-03-18   |                            2020 |
-- | 2019-07-25   |                            2019 |
-- | 2023-01-09   |                            2023 |
-- | 2021-11-15   |                            2021 |
-- | 2024-02-12   |                            2024 |
-- | 2018-05-20   |                            2018 |
-- | 2022-09-01   |                            2022 |
-- | 2020-12-10   |                            2020 |
-- | 2024-06-17   |                            2024 |
-- | 2022-06-10   |                            2022 |
-- | 2021-11-15   |                            2021 |
-- +--------------+---------------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT date_of_birth, EXTRACT(MONTH FROM date_of_birth) FROM employee_management;

-- +---------------+-----------------------------------+
-- | date_of_birth | EXTRACT(MONTH FROM date_of_birth) |
-- +---------------+-----------------------------------+
-- | 1998-04-15    |                                 4 |
-- | 1996-08-22    |                                 8 |
-- | 1995-01-12    |                                 1 |
-- | 1999-11-30    |                                11 |
-- | 1997-06-18    |                                 6 |
-- | 2000-02-25    |                                 2 |
-- | 1994-09-05    |                                 9 |
-- | 1998-12-14    |                                12 |
-- | 1996-03-28    |                                 3 |
-- | 2001-07-19    |                                 7 |
-- | 1998-04-15    |                                 4 |
-- | 1997-06-18    |                                 6 |
-- +---------------+-----------------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT attendance_date, EXTRACT(DAY FROM attendance_date) FROM employee_management;

-- +-----------------+-----------------------------------+
-- | attendance_date | EXTRACT(DAY FROM attendance_date) |
-- +-----------------+-----------------------------------+
-- | 2026-08-03      |                                 3 |
-- | 2026-08-04      |                                 4 |
-- | 2026-08-05      |                                 5 |
-- | 2026-08-06      |                                 6 |
-- | 2026-08-07      |                                 7 |
-- | 2026-08-08      |                                 8 |
-- | 2026-08-10      |                                10 |
-- | 2026-08-11      |                                11 |
-- | 2026-08-12      |                                12 |
-- | 2026-08-13      |                                13 |
-- | 2026-08-17      |                                17 |
-- | 2026-08-18      |                                18 |
-- +-----------------+-----------------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT login_time, EXTRACT(HOUR FROM login_time) FROM employee_management;

-- +---------------------+-------------------------------+
-- | login_time          | EXTRACT(HOUR FROM login_time) |
-- +---------------------+-------------------------------+
-- | 2026-08-03 09:15:20 |                             9 |
-- | 2026-08-04 09:05:10 |                             9 |
-- | 2026-08-05 09:20:45 |                             9 |
-- | 2026-08-06 08:55:30 |                             8 |
-- | 2026-08-07 09:10:25 |                             9 |
-- | 2026-08-08 08:50:15 |                             8 |
-- | 2026-08-10 09:25:40 |                             9 |
-- | 2026-08-11 09:00:00 |                             9 |
-- | 2026-08-12 09:30:15 |                             9 |
-- | 2026-08-13 08:55:20 |                             8 |
-- | 2026-08-17 09:12:35 |                             9 |
-- | 2026-08-18 08:58:10 |                             8 |
-- +---------------------+-------------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT login_time, EXTRACT(MINUTE FROM login_time) FROM employee_management;

-- +---------------------+---------------------------------+
-- | login_time          | EXTRACT(MINUTE FROM login_time) |
-- +---------------------+---------------------------------+
-- | 2026-08-03 09:15:20 |                              15 |
-- | 2026-08-04 09:05:10 |                               5 |
-- | 2026-08-05 09:20:45 |                              20 |
-- | 2026-08-06 08:55:30 |                              55 |
-- | 2026-08-07 09:10:25 |                              10 |
-- | 2026-08-08 08:50:15 |                              50 |
-- | 2026-08-10 09:25:40 |                              25 |
-- | 2026-08-11 09:00:00 |                               0 |
-- | 2026-08-12 09:30:15 |                              30 |
-- | 2026-08-13 08:55:20 |                              55 |
-- | 2026-08-17 09:12:35 |                              12 |
-- | 2026-08-18 08:58:10 |                              58 |
-- +---------------------+---------------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT login_time, EXTRACT(SECOND FROM login_time) FROM employee_management;

-- +---------------------+---------------------------------+
-- | login_time          | EXTRACT(SECOND FROM login_time) |
-- +---------------------+---------------------------------+
-- | 2026-08-03 09:15:20 |                              20 |
-- | 2026-08-04 09:05:10 |                              10 |
-- | 2026-08-05 09:20:45 |                              45 |
-- | 2026-08-06 08:55:30 |                              30 |
-- | 2026-08-07 09:10:25 |                              25 |
-- | 2026-08-08 08:50:15 |                              15 |
-- | 2026-08-10 09:25:40 |                              40 |
-- | 2026-08-11 09:00:00 |                               0 |
-- | 2026-08-12 09:30:15 |                              15 |
-- | 2026-08-13 08:55:20 |                              20 |
-- | 2026-08-17 09:12:35 |                              35 |
-- | 2026-08-18 08:58:10 |                              10 |
-- +---------------------+---------------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT joining_date, DATE_ADD(joining_date, INTERVAL 30 DAY) FROM employee_management;

-- +--------------+-----------------------------------------+
-- | joining_date | DATE_ADD(joining_date, INTERVAL 30 DAY) |
-- +--------------+-----------------------------------------+
-- | 2022-06-10   | 2022-07-10                              |
-- | 2020-03-18   | 2020-04-17                              |
-- | 2019-07-25   | 2019-08-24                              |
-- | 2023-01-09   | 2023-02-08                              |
-- | 2021-11-15   | 2021-12-15                              |
-- | 2024-02-12   | 2024-03-13                              |
-- | 2018-05-20   | 2018-06-19                              |
-- | 2022-09-01   | 2022-10-01                              |
-- | 2020-12-10   | 2021-01-09                              |
-- | 2024-06-17   | 2024-07-17                              |
-- | 2022-06-10   | 2022-07-10                              |
-- | 2021-11-15   | 2021-12-15                              |
-- +--------------+-----------------------------------------+
-- 12 rows in set (0.00 sec)




Done till question no 30