`
1.   
Create a table named Students with the following columns:

StudentID (INT, Primary Key)
Name (VARCHAR(50), NOT NULL)
Age (INT, should be between 18 and 25)
Marks (DECIMAL(5,2), should be between 0 and 100)
Insert the following records and observe what happens:

(101, 'Alice', 20, 85.5)
(102, 'Bob', 17, 90.0) (This should fail due to Age constraint)
(103, 'Charlie', 22, 105.0) (This should fail due to Marks constraint)
(104, 'David', 24, 75.0)

2.

Create a table Patients with:

PatientID (INT, Primary Key)
PatientName (VARCHAR(50), NOT NULL)
Age (INT, should be between 1 and 100)
AdmissionStatus (VARCHAR(15), should be 'Admitted' or 'Discharged', DEFAULT 'Admitted')
TreatmentCost (DECIMAL(10,2), should be at least 1000)
Insert records and check constraints:

(201, 'Michael', 25, 'Admitted', 5000)
(202, 'Linda', 105, 'Admitted', 8000) (Should fail due to Age constraint)
(203, 'David', 40, DEFAULT, 1200) (Should insert 'Admitted' as default)
(204, 'Sarah', 30, 'Discharged', 700) (Should fail due to TreatmentCost constraint)

3.
Create a table GymMembers with:

MemberID (INT, Primary Key)
MemberName (VARCHAR(50), NOT NULL)
MembershipType (VARCHAR(15), should be 'Basic', 'Premium', or 'VIP', DEFAULT 'Basic')
MonthlyFee (DECIMAL(6,2), should be at least 500)
Insert records and check constraints:

(501, 'John', 'Premium', 1200)
(502, 'Emma', 'Gold', 800) (Should fail due to MembershipType constraint)
(503, 'Daniel', DEFAULT, 700) (Should insert 'Basic' as default)
(504, 'Sophia', 'VIP', 300) (Should fail due to MonthlyFee constraint)


4.
Create a table Events with:
EventID (Primary Key, Auto Increment)
EventName (VARCHAR)
EventDate (DATE, must be in the future)
Insert sample records. Ensure past dates are not allowed.
Retrieve all upcoming events.
5.
Create a table MovieTickets with:
TicketID (Primary Key, Auto Increment)
CustomerName (VARCHAR)
ShowTime (DATETIME, must be at least 2 hours after booking)
BookingTime (DATETIME, default to current time)
Insert sample bookings.
Retrieve all upcoming movie shows.
`









mysql> CREATE TABLE students (studentid INT PRIMARY KEY, name VARCHAR(50) NOT NULL, age INT CHECK(age BETWEEN 18 AND 25), marks DECIMAL(5,2) CHECK( marks BETWEEN 0 AND 100));

-- Query OK, 0 rows affected (0.14 sec)




mysql> DESC students;

-- +-----------+--------------+------+-----+---------+-------+
-- | Field     | Type         | Null | Key | Default | Extra |
-- +-----------+--------------+------+-----+---------+-------+
-- | studentid | int          | NO   | PRI | NULL    |       |
-- | name      | varchar(50)  | NO   |     | NULL    |       |
-- | age       | int          | YES  |     | NULL    |       |
-- | marks     | decimal(5,2) | YES  |     | NULL    |       |
-- +-----------+--------------+------+-----+---------+-------+
-- 4 rows in set (0.01 sec)




mysql> INSERT INTO students VALUES(101, 'Alice', 20, 85.5);

-- Query OK, 1 row affected (0.01 sec)




mysql> SELECT * FROM students;

-- +-----------+-------+------+-------+
-- | studentid | name  | age  | marks |
-- +-----------+-------+------+-------+
-- |       101 | Alice |   20 | 85.50 |
-- +-----------+-------+------+-------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO students VALUES(102, 'Bob', 17, 90.0);

-- ERROR 3819 (HY000): Check constraint 'students_chk_1' is violated.




mysql> INSERT INTO students VALUES(103, 'Charlie', 22, 105.0);

-- ERROR 3819 (HY000): Check constraint 'students_chk_2' is violated.




mysql> INSERT INTO students VALUES(104, 'David', 24, 75.0);

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM students;

-- +-----------+-------+------+-------+
-- | studentid | name  | age  | marks |
-- +-----------+-------+------+-------+
-- |       101 | Alice |   20 | 85.50 |
-- |       104 | David |   24 | 75.00 |
-- +-----------+-------+------+-------+
-- 2 rows in set (0.00 sec)










mysql> CREATE TABLE patients( patientid INT PRIMARY KEY, patientname VARCHAR(50) NOT NULL, age INT CHECK(age BETWEEN 1 AND 100), admissionstatus VARCHAR(15) CHECK( admissionstatus IN ('Admitted', 'Discharged')) DEFAULT 'Admitted', treatmentcost DECIMAL(10,2) CHECK(treatmentcost >= 1000));

-- Query OK, 0 rows affected (0.04 sec)




mysql> DESC patients;

-- +-----------------+---------------+------+-----+----------+-------+
-- | Field           | Type          | Null | Key | Default  | Extra |
-- +-----------------+---------------+------+-----+----------+-------+
-- | patientid       | int           | NO   | PRI | NULL     |       |
-- | patientname     | varchar(50)   | NO   |     | NULL     |       |
-- | age             | int           | YES  |     | NULL     |       |
-- | admissionstatus | varchar(15)   | YES  |     | Admitted |       |
-- | treatmentcost   | decimal(10,2) | YES  |     | NULL     |       |
-- +-----------------+---------------+------+-----+----------+-------+
-- 5 rows in set (0.00 sec)




mysql> INSERT INTO patients VALUES( 201, 'Michael', 25, 'Admitted', 5000);

-- Query OK, 1 row affected (0.01 sec)




mysql> SELECT * FROM patients;

-- +-----------+-------------+------+-----------------+---------------+
-- | patientid | patientname | age  | admissionstatus | treatmentcost |
-- +-----------+-------------+------+-----------------+---------------+
-- |       201 | Michael     |   25 | Admitted        |       5000.00 |
-- +-----------+-------------+------+-----------------+---------------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO patients VALUES( 202, 'Linda', 105, 'Admitted', 8000);

-- ERROR 3819 (HY000): Check constraint 'patients_chk_1' is violated.




mysql> SELECT * FROM patients;

-- +-----------+-------------+------+-----------------+---------------+
-- | patientid | patientname | age  | admissionstatus | treatmentcost |
-- +-----------+-------------+------+-----------------+---------------+
-- |       201 | Michael     |   25 | Admitted        |       5000.00 |
-- +-----------+-------------+------+-----------------+---------------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO patients VALUES( 203, 'David', 40, DEFAULT, 1200);

-- Query OK, 1 row affected (0.01 sec)




mysql> SELECT * FROM patients;

-- +-----------+-------------+------+-----------------+---------------+
-- | patientid | patientname | age  | admissionstatus | treatmentcost |
-- +-----------+-------------+------+-----------------+---------------+
-- |       201 | Michael     |   25 | Admitted        |       5000.00 |
-- |       203 | David       |   40 | Admitted        |       1200.00 |
-- +-----------+-------------+------+-----------------+---------------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO patients VALUES( 204, 'Sarah', 30, 'Discharged', 700);

-- ERROR 3819 (HY000): Check constraint 'patients_chk_3' is violated.










mysql> CREATE TABLE gymmember(memberid INT PRIMARY KEY, membername VARCHAR(50) NOT NULL, membershiptype VARCHAR(15) CHECK(membershiptype IN ('Basic', 'Premium', 'Vip')) DEFAULT 'Basic', monthlyfee DECIMAL(6,2) CHECK(monthlyfee >= 500));

-- Query OK, 0 rows affected (0.04 sec)




mysql> DESC gymmember;

-- +----------------+--------------+------+-----+---------+-------+
-- | Field          | Type         | Null | Key | Default | Extra |
-- +----------------+--------------+------+-----+---------+-------+
-- | memberid       | int          | NO   | PRI | NULL    |       |
-- | membername     | varchar(50)  | NO   |     | NULL    |       |
-- | membershiptype | varchar(15)  | YES  |     | Basic   |       |
-- | monthlyfee     | decimal(6,2) | YES  |     | NULL    |       |
-- +----------------+--------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)




mysql> INSERT INTO gymmember VALUES(501, 'John', 'Premium', 1200);

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM gymmember;

-- +----------+------------+----------------+------------+
-- | memberid | membername | membershiptype | monthlyfee |
-- +----------+------------+----------------+------------+
-- |      501 | John       | Premium        |    1200.00 |
-- +----------+------------+----------------+------------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO gymmember VALUES(502, 'Emma', 'Gold', 800);

-- ERROR 3819 (HY000): Check constraint 'gymmember_chk_1' is violated.




mysql> SELECT * FROM gymmember;

-- +----------+------------+----------------+------------+
-- | memberid | membername | membershiptype | monthlyfee |
-- +----------+------------+----------------+------------+
-- |      501 | John       | Premium        |    1200.00 |
-- +----------+------------+----------------+------------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO gymmember VALUES(503, 'Daniel', DEFAULT, 700);

-- Query OK, 1 row affected (0.01 sec)




mysql> SELECT * FROM gymmember;

-- +----------+------------+----------------+------------+
-- | memberid | membername | membershiptype | monthlyfee |
-- +----------+------------+----------------+------------+
-- |      501 | John       | Premium        |    1200.00 |
-- |      503 | Daniel     | Basic          |     700.00 |
-- +----------+------------+----------------+------------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO gymmember VALUES(504, 'Sophia', 'VIP', 300);

-- ERROR 3819 (HY000): Check constraint 'gymmember_chk_2' is violated.




mysql> SELECT * FROM gymmember;

-- +----------+------------+----------------+------------+
-- | memberid | membername | membershiptype | monthlyfee |
-- +----------+------------+----------------+------------+
-- |      501 | John       | Premium        |    1200.00 |
-- |      503 | Daniel     | Basic          |     700.00 |
-- +----------+------------+----------------+------------+
-- 2 rows in set (0.00 sec)










mysql> CREATE TABLE events( eventid INT PRIMARY KEY AUTO_INCREMENT, eventname VARCHAR(100), eventdate DATE CHECK( eventdate > '2026-09-02'));

-- Query OK, 0 rows affected (0.03 sec)




mysql> DESC events;

-- +-----------+--------------+------+-----+---------+----------------+
-- | Field     | Type         | Null | Key | Default | Extra          |
-- +-----------+--------------+------+-----+---------+----------------+
-- | eventid   | int          | NO   | PRI | NULL    | auto_increment |
-- | eventname | varchar(100) | YES  |     | NULL    |                |
-- | eventdate | date         | YES  |     | NULL    |                |
-- +-----------+--------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO events( eventname, eventdate) VALUES( 'wedding', '2027-01-01');

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM events;

-- +---------+-----------+------------+
-- | eventid | eventname | eventdate  |
-- +---------+-----------+------------+
-- |       1 | wedding   | 2027-01-01 |
-- +---------+-----------+------------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO events( eventname, eventdate) VALUES( 'wedding', '2025-01-01');

-- ERROR 3819 (HY000): Check constraint 'events_chk_1' is violated.




mysql> INSERT INTO events( eventname, eventdate) VALUES( 'Convocation', '2027-04-06');

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM events;

-- +---------+-------------+------------+
-- | eventid | eventname   | eventdate  |
-- +---------+-------------+------------+
-- |       1 | wedding     | 2027-01-01 |
-- |       2 | Convocation | 2027-04-06 |
-- +---------+-------------+------------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO events( eventname, eventdate) VALUES( 'birthday', '2005-10-20');

-- ERROR 3819 (HY000): Check constraint 'events_chk_1' is violated.




mysql> SELECT * FROM events;

-- +---------+-------------+------------+
-- | eventid | eventname   | eventdate  |
-- +---------+-------------+------------+
-- |       1 | wedding     | 2027-01-01 |
-- |       2 | Convocation | 2027-04-06 |
-- +---------+-------------+------------+
-- 2 rows in set (0.00 sec)










mysql> CREATE TABLE movietickets( ticketid INT PRIMARY KEY AUTO_INCREMENT, customername VARCHAR(50), showtime DATETIME CHECK( showtime >= HOUR(bookingtime) + 2), bookingTime DATETIME DEFAULT CURRENT_TIMESTAMP);

-- ERROR 3813 (HY000): Column check constraint 'movietickets_chk_1' references other column.

INCOMPLETE 
here functions neededed 