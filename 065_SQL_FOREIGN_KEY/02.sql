`
QNO 2:-

A hospital wants to store patient records and their assigned doctors. If a doctor leaves, all related patient records should be deleted.

Tasks:
Create a Doctors table:

DoctorID (PRIMARY KEY, AUTO_INCREMENT)
DoctorName (NOT NULL)
Specialization (NOT NULL, UNIQUE)
Create a Patients table:

PatientID (PRIMARY KEY, AUTO_INCREMENT)
PatientName (NOT NULL)
DoctorID (FOREIGN KEY)
Insert sample data (at least 3 doctors and 5 patients).

Delete a doctor and check if related patients are removed automatically.

Update a patient’s doctor to a new doctor.
`






mysql> CREATE TABLE doctors( doctorid INT PRIMARY KEY AUTO_INCREMENT, doctorname VARCHAR(20) NOT NULL, specialization VARCHAR(20) NOT NULL UNIQUE);

-- Query OK, 0 rows affected (0.04 sec)




mysql> DESC doctors;

-- +----------------+-------------+------+-----+---------+----------------+
-- | Field          | Type        | Null | Key | Default | Extra          |
-- +----------------+-------------+------+-----+---------+----------------+
-- | doctorid       | int         | NO   | PRI | NULL    | auto_increment |
-- | doctorname     | varchar(20) | NO   |     | NULL    |                |
-- | specialization | varchar(20) | NO   | UNI | NULL    |                |
-- +----------------+-------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)




mysql> CREATE TABLE patients( patientid INT PRIMARY KEY AUTO_INCREMENT, patientname VARCHAR(20) NOT NULL, doctorid INT, FOREIGN KEY(doctorid) REFERENCES doctors(doctorid) ON DELETE CASCADE);

-- Query OK, 0 rows affected (0.04 sec)




mysql> DESC patients;

-- +-------------+-------------+------+-----+---------+----------------+
-- | Field       | Type        | Null | Key | Default | Extra          |
-- +-------------+-------------+------+-----+---------+----------------+
-- | patientid   | int         | NO   | PRI | NULL    | auto_increment |
-- | patientname | varchar(20) | NO   |     | NULL    |                |
-- | doctorid    | int         | YES  | MUL | NULL    |                |
-- +-------------+-------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO doctors VALUES(101, 'Rajesh Sharma', 'Cardiologist');

-- Query OK, 1 row affected (0.01 sec)




mysql> INSERT INTO doctors VALUES(102, 'Priya Verma', 'Dermatologist');

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO doctors VALUES(103, 'Amit Patel', 'Neurologist');

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM doctors;

-- +----------+---------------+----------------+
-- | doctorid | doctorname    | specialization |
-- +----------+---------------+----------------+
-- |      101 | Rajesh Sharma | Cardiologist   |
-- |      102 | Priya Verma   | Dermatologist  |
-- |      103 | Amit Patel    | Neurologist    |
-- +----------+---------------+----------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO patients VALUES( 1, 'Rohit Singh', 101);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO patients VALUES( 2, 'neha jain', 102);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO patients VALUES( 3, 'vikas mehta', 101);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO patients VALUES( 4, 'anjali gupta', 103);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO patients VALUES( 5, 'karan joshi', 102);

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM patients;

-- +-----------+--------------+----------+
-- | patientid | patientname  | doctorid |
-- +-----------+--------------+----------+
-- |         1 | Rohit Singh  |      101 |
-- |         2 | neha jain    |      102 |
-- |         3 | vikas mehta  |      101 |
-- |         4 | anjali gupta |      103 |
-- |         5 | karan joshi  |      102 |
-- +-----------+--------------+----------+
-- 5 rows in set (0.00 sec)




mysql> DELETE FROM doctors WHERE doctorid = 101;

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM doctors;

-- +----------+-------------+----------------+
-- | doctorid | doctorname  | specialization |
-- +----------+-------------+----------------+
-- |      102 | Priya Verma | Dermatologist  |
-- |      103 | Amit Patel  | Neurologist    |
-- +----------+-------------+----------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT * FROM patients;

-- +-----------+--------------+----------+
-- | patientid | patientname  | doctorid |
-- +-----------+--------------+----------+
-- |         2 | neha jain    |      102 |
-- |         4 | anjali gupta |      103 |
-- |         5 | karan joshi  |      102 |
-- +-----------+--------------+----------+
-- 3 rows in set (0.00 sec)




mysql> UPDATE patients SET doctorid = 103 WHERE patientid = 5;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM patients;

-- +-----------+--------------+----------+
-- | patientid | patientname  | doctorid |
-- +-----------+--------------+----------+
-- |         2 | neha jain    |      102 |
-- |         4 | anjali gupta |      103 |
-- |         5 | karan joshi  |      103 |
-- +-----------+--------------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT * FROM doctors;

-- +----------+-------------+----------------+
-- | doctorid | doctorname  | specialization |
-- +----------+-------------+----------------+
-- |      102 | Priya Verma | Dermatologist  |
-- |      103 | Amit Patel  | Neurologist    |
-- +----------+-------------+----------------+
-- 2 rows in set (0.00 sec)
