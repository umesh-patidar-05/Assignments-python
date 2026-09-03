`
MYSQL STRING FUNCTIONS ASSIGNMENT
Scenario

A company wants to manage and analyze employee information using MySQL. The HR department needs to prepare different employee reports by formatting employee names, processing email addresses, extracting specific parts of employee information, removing unwanted spaces, and creating employee summaries.

You are given the following table and employee data. Write appropriate SELECT queries to perform the required operations.

Table Name: employee_string
Column	Data Type	Constraint
emp_id	INT	PRIMARY KEY, AUTO_INCREMENT
emp_name	VARCHAR(50)	NOT NULL
email	VARCHAR(100)	NOT NULL
department	VARCHAR(30)	NOT NULL
designation	VARCHAR(50)	NOT NULL
city	VARCHAR(30)	NOT NULL
phone	VARCHAR(15)	NOT NULL
DATA
('  Rahul Sharma  ', 'rahul.sharma@gmail.com', 'it', 'software developer', 'Indore', '9876543210'),
('Priya Verma', 'priya.verma@yahoo.com', 'hr', 'hr executive', 'Bhopal', '9876501234'),
('  Amit Patel', 'amit.patel@gmail.com', 'finance', 'account executive', 'Indore', '9123456780'),
('Neha Singh  ', 'neha.singh@company.com', 'marketing', 'marketing manager', 'Mumbai', '9988776655'),
('Rohit Jain', 'rohit.jain@gmail.com', 'it', 'team leader', 'Pune', '9090909090'),
('  Sneha Gupta ', 'sneha.gupta@yahoo.com', 'sales', 'sales executive', 'Delhi', '9012345678'),
('Vikas Yadav', 'vikas.yadav@gmail.com', 'finance', 'senior accountant', 'Jaipur', '9345678901'),
('Anjali Mehta', 'anjali.mehta@company.com', 'hr', 'hr manager', 'Indore', '9765432109'),
('  Karan Joshi  ', 'karan.joshi@gmail.com', 'it', 'database administrator', 'Bhopal', '8899776655'),
('Meena Kapoor', 'meena.kapoor@yahoo.com', 'sales', 'sales manager', 'Mumbai', '9001122334');
QUESTIONS
Q1.

The HR department wants to display all employee names in capital letters for an official employee report.

Q2.

The company wants all department names to be displayed in small letters for standardization.

Q3.

HR wants to know the length of each employee's name.

Display the employee name along with its length.

Q4.

The HR report should display employee names in the following format:

Employee: Rahul Sharma
Employee: Priya Verma

Create this output for every employee.

Q5.

HR wants to display only the first 5 characters of each employee's name.

Q6.

Some employee names contain unnecessary spaces before or after the name.

Display all employee names after removing the unwanted spaces.

Q7.

The company wants to replace the Gmail domain with the company's domain in the displayed email addresses.

For example:

rahul.sharma@gmail.com

should be displayed as:

rahul.sharma@company.com

Do not modify the original table data.

Q8.

HR wants to create a temporary employee code using the first 3 characters of the employee's name.

Display the employee name along with the generated code.

Q9.

For privacy purposes, the company wants to display only the last 4 digits of each employee's phone number.

Q10.

The HR department wants to display the employee's location in the following format:

Indore-IT
Bhopal-HR
Mumbai-Marketing

Combine the city and department using - between them.

Q11.
 
For a testing purpose, the IT department wants to display every employee's name in reverse order.

Q12.

The IT department wants to find the position of the @ symbol in every employee's email address.

Display the email address along with the position.

Combined Questions
Q13.

HR wants to create an official employee report in the following format:

RAHUL SHARMA - SOFTWARE DEVELOPER

Both the employee name and designation should appear in capital letters.

Q14.

Before generating the final report, HR wants to remove unwanted spaces from employee names and then display the cleaned names in capital letters.

Q15.

The company wants a final employee summary in the following format:

RAHUL SHARMA | SOFTWARE DEVELOPER | INDORE | 3210

The report should contain:

Employee name without unwanted spaces and in capital letters
Designation in capital letters
City in capital letters
Last 4 digits of phone number
| as separator between all values

Condition: Do not modify the original table data. Use only SELECT queries for all questions.
`








mysql> CREATE TABLE employee_string( emp_id INT PRIMARY KEY AUTO_INCREMENT,
    -> emp_name VARCHAR(50) NOT NULL,
    -> email VARCHAR(100) NOT NULL,
    -> department VARCHAR(30) NOT NULL,
    -> designation VARCHAR(50) NOT NULL,
    -> city VARCHAR(30) NOT NULL,
    -> phone VARCHAR(15) NOT NULL);

-- Query OK, 0 rows affected (0.13 sec)




mysql> DESC employee_string;

-- +-------------+--------------+------+-----+---------+----------------+
-- | Field       | Type         | Null | Key | Default | Extra          |
-- +-------------+--------------+------+-----+---------+----------------+
-- | emp_id      | int          | NO   | PRI | NULL    | auto_increment |
-- | emp_name    | varchar(50)  | NO   |     | NULL    |                |
-- | email       | varchar(100) | NO   |     | NULL    |                |
-- | department  | varchar(30)  | NO   |     | NULL    |                |
-- | designation | varchar(50)  | NO   |     | NULL    |                |
-- | city        | varchar(30)  | NO   |     | NULL    |                |
-- | phone       | varchar(15)  | NO   |     | NULL    |                |
-- +-------------+--------------+------+-----+---------+----------------+
-- 7 rows in set (0.01 sec)




mysql> INSERT INTO employee_string( emp_name, email, department, designation, city, phone)
    -> VALUES
    -> ('  Rahul Sharma  ', 'rahul.sharma@gmail.com', 'it', 'software developer', 'Indore', '9876543210'),
    -> ('Priya Verma', 'priya.verma@yahoo.com', 'hr', 'hr executive', 'Bhopal', '9876501234'),
    -> ('  Amit Patel', 'amit.patel@gmail.com', 'finance', 'account executive', 'Indore', '9123456780'),
    -> ('Neha Singh  ', 'neha.singh@company.com', 'marketing', 'marketing manager', 'Mumbai', '9988776655'),
    -> ('Rohit Jain', 'rohit.jain@gmail.com', 'it', 'team leader', 'Pune', '9090909090'),
    -> ('  Sneha Gupta ', 'sneha.gupta@yahoo.com', 'sales', 'sales executive', 'Delhi', '9012345678'),
    -> ('Vikas Yadav', 'vikas.yadav@gmail.com', 'finance', 'senior accountant', 'Jaipur', '9345678901'),
    -> ('Anjali Mehta', 'anjali.mehta@company.com', 'hr', 'hr manager', 'Indore', '9765432109'),
    -> ('  Karan Joshi  ', 'karan.joshi@gmail.com', 'it', 'database administrator', 'Bhopal', '8899776655'),
    -> ('Meena Kapoor', 'meena.kapoor@yahoo.com', 'sales', 'sales manager', 'Mumbai', '9001122334');

-- Query OK, 10 rows affected (0.01 sec)
-- Records: 10  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee_string;

-- +--------+------------------+--------------------------+------------+------------------------+--------+------------+
-- | emp_id | emp_name         | email                    | department | designation            | city   | phone      |
-- +--------+------------------+--------------------------+------------+------------------------+--------+------------+
-- |      1 |   Rahul Sharma   | rahul.sharma@gmail.com   | it         | software developer     | Indore | 9876543210 |
-- |      2 | Priya Verma      | priya.verma@yahoo.com    | hr         | hr executive           | Bhopal | 9876501234 |
-- |      3 |   Amit Patel     | amit.patel@gmail.com     | finance    | account executive      | Indore | 9123456780 |
-- |      4 | Neha Singh       | neha.singh@company.com   | marketing  | marketing manager      | Mumbai | 9988776655 |
-- |      5 | Rohit Jain       | rohit.jain@gmail.com     | it         | team leader            | Pune   | 9090909090 |
-- |      6 |   Sneha Gupta    | sneha.gupta@yahoo.com    | sales      | sales executive        | Delhi  | 9012345678 |
-- |      7 | Vikas Yadav      | vikas.yadav@gmail.com    | finance    | senior accountant      | Jaipur | 9345678901 |
-- |      8 | Anjali Mehta     | anjali.mehta@company.com | hr         | hr manager             | Indore | 9765432109 |
-- |      9 |   Karan Joshi    | karan.joshi@gmail.com    | it         | database administrator | Bhopal | 8899776655 |
-- |     10 | Meena Kapoor     | meena.kapoor@yahoo.com   | sales      | sales manager          | Mumbai | 9001122334 |
-- +--------+------------------+--------------------------+------------+------------------------+--------+------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT UPPER(emp_name) FROM employee_string;

-- +------------------+
-- | UPPER(emp_name)  |
-- +------------------+
-- |   RAHUL SHARMA   |
-- | PRIYA VERMA      |
-- |   AMIT PATEL     |
-- | NEHA SINGH       |
-- | ROHIT JAIN       |
-- |   SNEHA GUPTA    |
-- | VIKAS YADAV      |
-- | ANJALI MEHTA     |
-- |   KARAN JOSHI    |
-- | MEENA KAPOOR     |
-- +------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT LOWER(department) FROM employee_string;

-- +-------------------+
-- | LOWER(department) |
-- +-------------------+
-- | it                |
-- | hr                |
-- | finance           |
-- | marketing         |
-- | it                |
-- | sales             |
-- | finance           |
-- | hr                |
-- | it                |
-- | sales             |
-- +-------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT emp_name, LENGTH(emp_name) AS length FROM employee_string;

-- +------------------+--------+
-- | emp_name         | length |
-- +------------------+--------+
-- |   Rahul Sharma   |     16 |
-- | Priya Verma      |     11 |
-- |   Amit Patel     |     12 |
-- | Neha Singh       |     12 |
-- | Rohit Jain       |     10 |
-- |   Sneha Gupta    |     14 |
-- | Vikas Yadav      |     11 |
-- | Anjali Mehta     |     12 |
-- |   Karan Joshi    |     15 |
-- | Meena Kapoor     |     12 |
-- +------------------+--------+
-- 10 rows in set (0.00 sec)




mysql> SELECT CONCAT('Employee: ', emp_name) FROM employee_string;

-- +--------------------------------+
-- | CONCAT('Employee: ', emp_name) |
-- +--------------------------------+
-- | Employee:   Rahul Sharma       |
-- | Employee: Priya Verma          |
-- | Employee:   Amit Patel         |
-- | Employee: Neha Singh           |
-- | Employee: Rohit Jain           |
-- | Employee:   Sneha Gupta        |
-- | Employee: Vikas Yadav          |
-- | Employee: Anjali Mehta         |
-- | Employee:   Karan Joshi        |
-- | Employee: Meena Kapoor         |
-- +--------------------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT LEFT(TRIM(emp_name), 5)  FROM employee_string;

-- +-------------------------+
-- | LEFT(TRIM(emp_name), 5) |
-- +-------------------------+
-- | Rahul                   |
-- | Priya                   |
-- | Amit                    |
-- | Neha                    |
-- | Rohit                   |
-- | Sneha                   |
-- | Vikas                   |
-- | Anjal                   |
-- | Karan                   |
-- | Meena                   |
-- +-------------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT TRIM(emp_name)  FROM employee_string;

-- +----------------+
-- | TRIM(emp_name) |
-- +----------------+
-- | Rahul Sharma   |
-- | Priya Verma    |
-- | Amit Patel     |
-- | Neha Singh     |
-- | Rohit Jain     |
-- | Sneha Gupta    |
-- | Vikas Yadav    |
-- | Anjali Mehta   |
-- | Karan Joshi    |
-- | Meena Kapoor   |
-- +----------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT email, REPLACE(email, 'gmail', 'company') FROM employee_string;

-- +--------------------------+------------------------------------+
-- | email                    | REPLACE(email, 'gmail', 'company') |
-- +--------------------------+------------------------------------+
-- | rahul.sharma@gmail.com   | rahul.sharma@company.com           |
-- | priya.verma@yahoo.com    | priya.verma@yahoo.com              |
-- | amit.patel@gmail.com     | amit.patel@company.com             |
-- | neha.singh@company.com   | neha.singh@company.com             |
-- | rohit.jain@gmail.com     | rohit.jain@company.com             |
-- | sneha.gupta@yahoo.com    | sneha.gupta@yahoo.com              |
-- | vikas.yadav@gmail.com    | vikas.yadav@company.com            |
-- | anjali.mehta@company.com | anjali.mehta@company.com           |
-- | karan.joshi@gmail.com    | karan.joshi@company.com            |
-- | meena.kapoor@yahoo.com   | meena.kapoor@yahoo.com             |
-- +--------------------------+------------------------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT emp_name , LEFT(TRIM(emp_name), 3) AS emp_code FROM employee_string;

-- +------------------+----------+
-- | emp_name         | emp_code |
-- +------------------+----------+
-- |   Rahul Sharma   | Rah      |
-- | Priya Verma      | Pri      |
-- |   Amit Patel     | Ami      |
-- | Neha Singh       | Neh      |
-- | Rohit Jain       | Roh      |
-- |   Sneha Gupta    | Sne      |
-- | Vikas Yadav      | Vik      |
-- | Anjali Mehta     | Anj      |
-- |   Karan Joshi    | Kar      |
-- | Meena Kapoor     | Mee      |
-- +------------------+----------+
-- 10 rows in set (0.00 sec)




mysql> SELECT RIGHT(phone, 4) FROM employee_string;

-- +-----------------+
-- | RIGHT(phone, 4) |
-- +-----------------+
-- | 3210            |
-- | 1234            |
-- | 6780            |
-- | 6655            |
-- | 9090            |
-- | 5678            |
-- | 8901            |
-- | 2109            |
-- | 6655            |
-- | 2334            |
-- +-----------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT CONCAT_WS('-', city, department) FROM employee_string;

-- +----------------------------------+
-- | CONCAT_WS('-', city, department) |
-- +----------------------------------+
-- | Indore-it                        |
-- | Bhopal-hr                        |
-- | Indore-finance                   |
-- | Mumbai-marketing                 |
-- | Pune-it                          |
-- | Delhi-sales                      |
-- | Jaipur-finance                   |
-- | Indore-hr                        |
-- | Bhopal-it                        |
-- | Mumbai-sales                     |
-- +----------------------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT emp_name, REVERSE(emp_name) FROM employee_string;

-- +------------------+-------------------+
-- | emp_name         | REVERSE(emp_name) |
-- +------------------+-------------------+
-- |   Rahul Sharma   |   amrahS luhaR    |
-- | Priya Verma      | amreV ayirP       |
-- |   Amit Patel     | letaP timA        |
-- | Neha Singh       |   hgniS aheN      |
-- | Rohit Jain       | niaJ tihoR        |
-- |   Sneha Gupta    |  atpuG ahenS      |
-- | Vikas Yadav      | vadaY sakiV       |
-- | Anjali Mehta     | atheM ilajnA      |
-- |   Karan Joshi    |   ihsoJ naraK     |
-- | Meena Kapoor     | roopaK aneeM      |
-- +------------------+-------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT email, INSTR(email, '@') FROM employee_string;

-- +--------------------------+-------------------+
-- | email                    | INSTR(email, '@') |
-- +--------------------------+-------------------+
-- | rahul.sharma@gmail.com   |                13 |
-- | priya.verma@yahoo.com    |                12 |
-- | amit.patel@gmail.com     |                11 |
-- | neha.singh@company.com   |                11 |
-- | rohit.jain@gmail.com     |                11 |
-- | sneha.gupta@yahoo.com    |                12 |
-- | vikas.yadav@gmail.com    |                12 |
-- | anjali.mehta@company.com |                13 |
-- | karan.joshi@gmail.com    |                12 |
-- | meena.kapoor@yahoo.com   |                13 |
-- +--------------------------+-------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT UPPER(CONCAT_WS(' - ', TRIM(emp_name), designation)) FROM employee_string;

-- +------------------------------------------------------+
-- | UPPER(CONCAT_WS(' - ', TRIM(emp_name), designation)) |
-- +------------------------------------------------------+
-- | RAHUL SHARMA - SOFTWARE DEVELOPER                    |
-- | PRIYA VERMA - HR EXECUTIVE                           |
-- | AMIT PATEL - ACCOUNT EXECUTIVE                       |
-- | NEHA SINGH - MARKETING MANAGER                       |
-- | ROHIT JAIN - TEAM LEADER                             |
-- | SNEHA GUPTA - SALES EXECUTIVE                        |
-- | VIKAS YADAV - SENIOR ACCOUNTANT                      |
-- | ANJALI MEHTA - HR MANAGER                            |
-- | KARAN JOSHI - DATABASE ADMINISTRATOR                 |
-- | MEENA KAPOOR - SALES MANAGER                         |
-- +------------------------------------------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT UPPER(TRIM(emp_name)) FROM employee_string;

-- +-----------------------+
-- | UPPER(TRIM(emp_name)) |
-- +-----------------------+
-- | RAHUL SHARMA          |
-- | PRIYA VERMA           |
-- | AMIT PATEL            |
-- | NEHA SINGH            |
-- | ROHIT JAIN            |
-- | SNEHA GUPTA           |
-- | VIKAS YADAV           |
-- | ANJALI MEHTA          |
-- | KARAN JOSHI           |
-- | MEENA KAPOOR          |
-- +-----------------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT UPPER(CONCAT_WS(' | ', TRIM(emp_name), designation, city, RIGHT(phone, 4))) FROM employee_string;

-- +-----------------------------------------------------------------------------+
-- | UPPER(CONCAT_WS(' | ', TRIM(emp_name), designation, city, RIGHT(phone, 4))) |
-- +-----------------------------------------------------------------------------+
-- | RAHUL SHARMA | SOFTWARE DEVELOPER | INDORE | 3210                           |
-- | PRIYA VERMA | HR EXECUTIVE | BHOPAL | 1234                                  |
-- | AMIT PATEL | ACCOUNT EXECUTIVE | INDORE | 6780                              |
-- | NEHA SINGH | MARKETING MANAGER | MUMBAI | 6655                              |
-- | ROHIT JAIN | TEAM LEADER | PUNE | 9090                                      |
-- | SNEHA GUPTA | SALES EXECUTIVE | DELHI | 5678                                |
-- | VIKAS YADAV | SENIOR ACCOUNTANT | JAIPUR | 8901                             |
-- | ANJALI MEHTA | HR MANAGER | INDORE | 2109                                   |
-- | KARAN JOSHI | DATABASE ADMINISTRATOR | BHOPAL | 6655                        |
-- | MEENA KAPOOR | SALES MANAGER | MUMBAI | 2334                                |
-- +-----------------------------------------------------------------------------+
-- 10 rows in set (0.00 sec)
