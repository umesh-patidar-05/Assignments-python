mysql> CREATE DATABASE hospital_management;

-- Query OK, 1 row affected (0.05 sec)



mysql> USE hospital_management;

-- Database changed



mysql> CREATE TABLE department( department_id INT PRIMARY KEY, department_name VARCHAR(20), floor_no INT NOT NULL);

-- Query OK, 0 rows affected (0.06 sec)



mysql> DESC department;

-- +-----------------+-------------+------+-----+---------+-------+
-- | Field           | Type        | Null | Key | Default | Extra |
-- +-----------------+-------------+------+-----+---------+-------+
-- | department_id   | int         | NO   | PRI | NULL    |       |
-- | department_name | varchar(20) | YES  |     | NULL    |       |
-- | floor_no        | int         | NO   |     | NULL    |       |
-- +-----------------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.03 sec)



mysql> INSERT INTO department VALUES
    -> (101,'Cardiology', 3),
    -> (102,'Neurology', 4),
    -> (103,'Orthopedics', 2),
    -> (104,'Dermatology', 1);

-- Query OK, 4 rows affected (0.01 sec)
-- Records: 4  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM department;

-- +---------------+-----------------+----------+
-- | department_id | department_name | floor_no |
-- +---------------+-----------------+----------+
-- |           101 | Cardiology      |        3 |
-- |           102 | Neurology       |        4 |
-- |           103 | Orthopedics     |        2 |
-- |           104 | Dermatology     |        1 |
-- +---------------+-----------------+----------+
-- 4 rows in set (0.00 sec)






mysql> CREATE TABLE doctor( doctor_id INT PRIMARY KEY, doctor_name VARCHAR(20), specialization VARCHAR(20), department_id INT, CONSTRAINT fk_doctor_department FOREIGN KEY(department_id) REFERENCES department(department_id) ON DELETE SET NULL ON UPDATE CASCADE);

-- Query OK, 0 rows affected (0.06 sec)



mysql> DESC doctor;

-- +----------------+-------------+------+-----+---------+-------+
-- | Field          | Type        | Null | Key | Default | Extra |
-- +----------------+-------------+------+-----+---------+-------+
-- | doctor_id      | int         | NO   | PRI | NULL    |       |
-- | doctor_name    | varchar(20) | YES  |     | NULL    |       |
-- | specialization | varchar(20) | YES  |     | NULL    |       |
-- | department_id  | int         | YES  | MUL | NULL    |       |
-- +----------------+-------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)



mysql> INSERT INTO doctor VALUES
    -> (201, 'Dr. Rajesh Sharma', 'Cardiologist', 101),
    -> (202, 'Dr. Neha Verma', 'Neurologist', 102),
    -> (203, 'Dr. Amit Jain', 'Orthopedic', 103),
    -> (204, 'Dr. Priya Singh', 'Dermatologist', 104),
    -> (205, 'Dr. Karan Mehta', 'Cardiologist', 101);

-- Query OK, 5 rows affected (0.01 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM doctor;

-- +-----------+-------------------+----------------+---------------+
-- | doctor_id | doctor_name       | specialization | department_id |
-- +-----------+-------------------+----------------+---------------+
-- |       201 | Dr. Rajesh Sharma | Cardiologist   |           101 |
-- |       202 | Dr. Neha Verma    | Neurologist    |           102 |
-- |       203 | Dr. Amit Jain     | Orthopedic     |           103 |
-- |       204 | Dr. Priya Singh   | Dermatologist  |           104 |
-- |       205 | Dr. Karan Mehta   | Cardiologist   |           101 |
-- +-----------+-------------------+----------------+---------------+
-- 5 rows in set (0.00 sec)






mysql> CREATE TABLE patient( patient_id INT PRIMARY KEY, patient_name VARCHAR(20), gender VARCHAR(10), city VARCHAR(20));

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC patient;

-- +--------------+-------------+------+-----+---------+-------+
-- | Field        | Type        | Null | Key | Default | Extra |
-- +--------------+-------------+------+-----+---------+-------+
-- | patient_id   | int         | NO   | PRI | NULL    |       |
-- | patient_name | varchar(20) | YES  |     | NULL    |       |
-- | gender       | varchar(10) | YES  |     | NULL    |       |
-- | city         | varchar(20) | YES  |     | NULL    |       |
-- +--------------+-------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)



mysql> INSERT INTO patient VALUES
    -> (301, 'Rahul Verma', 'Male', 'Indore'),
    -> (302, 'Sneha Sharma', 'Female', 'Bhopal'),
    -> (303, 'Amit Patel', 'Male', 'Indore'),
    -> (304, 'Pooja Gupta', 'Female', 'Ujjain'),
    -> (305, 'Rohan Jain', 'Male', 'Dewas'),
    -> (306, 'Neha Patel', 'Female', 'Indore');

-- Query OK, 6 rows affected (0.00 sec)
-- Records: 6  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM patient;

-- +------------+--------------+--------+--------+
-- | patient_id | patient_name | gender | city   |
-- +------------+--------------+--------+--------+
-- |        301 | Rahul Verma  | Male   | Indore |
-- |        302 | Sneha Sharma | Female | Bhopal |
-- |        303 | Amit Patel   | Male   | Indore |
-- |        304 | Pooja Gupta  | Female | Ujjain |
-- |        305 | Rohan Jain   | Male   | Dewas  |
-- |        306 | Neha Patel   | Female | Indore |
-- +------------+--------------+--------+--------+
-- 6 rows in set (0.00 sec)






mysql> CREATE TABLE medicine( medicine_id INT PRIMARY KEY, medicine_name VARCHAR(50), manufacturer VARCHAR(50), price DECIMAL(10,2));

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC medicine;

-- +---------------+---------------+------+-----+---------+-------+
-- | Field         | Type          | Null | Key | Default | Extra |
-- +---------------+---------------+------+-----+---------+-------+
-- | medicine_id   | int           | NO   | PRI | NULL    |       |
-- | medicine_name | varchar(50)   | YES  |     | NULL    |       |
-- | manufacturer  | varchar(50)   | YES  |     | NULL    |       |
-- | price         | decimal(10,2) | YES  |     | NULL    |       |
-- +---------------+---------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)



mysql> INSERT INTO medicine VALUES
    -> (401, 'Paracetamol', 'ABC Pharma', 30),
    -> (402, 'Azithromycin', 'XYZ Pharma', 120),
    -> (403, 'Pantoprazole', 'MedLife', 80),
    -> (404, 'Amoxicillin', 'HealthCare Pharma', 150),
    -> (405, 'Ibuprofen', 'ABC Pharma', 60),
    -> (406, 'Cetirizine', 'MedLife', 45);

-- Query OK, 6 rows affected (0.00 sec)
-- Records: 6  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM medicine;

-- +-------------+---------------+-------------------+--------+
-- | medicine_id | medicine_name | manufacturer      | price  |
-- +-------------+---------------+-------------------+--------+
-- |         401 | Paracetamol   | ABC Pharma        |  30.00 |
-- |         402 | Azithromycin  | XYZ Pharma        | 120.00 |
-- |         403 | Pantoprazole  | MedLife           |  80.00 |
-- |         404 | Amoxicillin   | HealthCare Pharma | 150.00 |
-- |         405 | Ibuprofen     | ABC Pharma        |  60.00 |
-- |         406 | Cetirizine    | MedLife           |  45.00 |
-- +-------------+---------------+-------------------+--------+
-- 6 rows in set (0.00 sec)






mysql> CREATE TABLE appointment( appointment_id INT PRIMARY KEY, appointment_date DATE, appointment_time TIME, patient_id INT, doctor_id INT, department_id INT, status VARCHAR(20),
    ->  CONSTRAINT fk_appointment_patient FOREIGN KEY(patient_id) REFERENCES patient(patient_id) ON DELETE CASCADE,
    -> CONSTRAINT fk_appointment_doctor FOREIGN KEY(doctor_id) REFERENCES doctor(doctor_id) ON DELETE SET NULL ON UPDATE SET NULL,
    -> CONSTRAINT fk_appointment_department FOREIGN KEY(department_id) REFERENCES department(department_id) ON UPDATE CASCADE);

-- Query OK, 0 rows affected (0.06 sec)



mysql> DESC appointment;

-- +------------------+-------------+------+-----+---------+-------+
-- | Field            | Type        | Null | Key | Default | Extra |
-- +------------------+-------------+------+-----+---------+-------+
-- | appointment_id   | int         | NO   | PRI | NULL    |       |
-- | appointment_date | date        | YES  |     | NULL    |       |
-- | appointment_time | time        | YES  |     | NULL    |       |
-- | patient_id       | int         | YES  | MUL | NULL    |       |
-- | doctor_id        | int         | YES  | MUL | NULL    |       |
-- | department_id    | int         | YES  | MUL | NULL    |       |
-- | status           | varchar(20) | YES  |     | NULL    |       |
-- +------------------+-------------+------+-----+---------+-------+
-- 7 rows in set (0.01 sec)



mysql> INSERT INTO appointment VALUES
    -> (501, '2026-09-01', '10:00', 301, 201, 101, 'Completed'),
    -> (502, '2026-09-01', '11:00', 302, 202, 102, 'Completed'),
    -> (503, '2026-09-02', '09:30', 303, 203, 103, 'Completed'),
    -> (504, '2026-09-02', '12:00', 304, 204, 104, 'Cancelled'),
    -> (505, '2026-09-03', '10:30', 301, 205, 101, 'Completed'),
    -> (506, '2026-09-03', '11:30', 305, 203, 103, 'Completed'),
    -> (507, '2026-09-04', '09:00', 306, 201, 101, 'Scheduled'),
    -> (508, '2026-09-04', '14:00', 302, 202, 102, 'Scheduled');

-- Query OK, 8 rows affected (0.02 sec)
-- Records: 8  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |       201 |           101 | Completed |
-- |            502 | 2026-09-01       | 11:00:00         |        302 |       202 |           102 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           103 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |       205 |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           103 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |       201 |           101 | Scheduled |
-- |            508 | 2026-09-04       | 14:00:00         |        302 |       202 |           102 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 8 rows in set (0.00 sec)






mysql> CREATE TABLE prescription( prescription_id INT PRIMARY KEY, prescription_date DATE, appointment_id INT, patient_id INT, doctor_id INT, remarks VARCHAR(50),
    ->      CONSTRAINT fk_prescription_appointment FOREIGN KEY(appointment_id) REFERENCES appointment(appointment_id) ON DELETE CASCADE,
    ->      CONSTRAINT fk_prescription_patient FOREIGN KEY(patient_id) REFERENCES patient(patient_id) ON DELETE CASCADE,
    ->      CONSTRAINT fk_prescription_doctor_id FOREIGN KEY(doctor_id) REFERENCES doctor(doctor_id) ON UPDATE SET NULL ON DELETE SET NULL);

-- Query OK, 0 rows affected (0.07 sec)



mysql> DESC prescription;

-- +-------------------+-------------+------+-----+---------+-------+
-- | Field             | Type        | Null | Key | Default | Extra |
-- +-------------------+-------------+------+-----+---------+-------+
-- | prescription_id   | int         | NO   | PRI | NULL    |       |
-- | prescription_date | date        | YES  |     | NULL    |       |
-- | appointment_id    | int         | YES  | MUL | NULL    |       |
-- | patient_id        | int         | YES  | MUL | NULL    |       |
-- | doctor_id         | int         | YES  | MUL | NULL    |       |
-- | remarks           | varchar(50) | YES  |     | NULL    |       |
-- +-------------------+-------------+------+-----+---------+-------+
-- 6 rows in set (0.00 sec)



mysql> INSERT INTO prescription VALUES
    -> (601, '2026-09-01', 501, 301, 201, 'BP observation'),
    -> (602, '2026-09-01', 502, 302, 202, 'Migraine treatment'),
    -> (603, '2026-09-02', 503, 303, 203, 'Knee pain'),
    -> (604, '2026-09-03', 505, 301, 205, 'Heart checkup'),
    -> (605, '2026-09-03', 506, 305, 203, 'Back pain');

-- Query OK, 5 rows affected (0.22 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM prescription;

-- +-----------------+-------------------+----------------+------------+-----------+--------------------+
-- | prescription_id | prescription_date | appointment_id | patient_id | doctor_id | remarks            |
-- +-----------------+-------------------+----------------+------------+-----------+--------------------+
-- |             601 | 2026-09-01        |            501 |        301 |       201 | BP observation     |
-- |             602 | 2026-09-01        |            502 |        302 |       202 | Migraine treatment |
-- |             603 | 2026-09-02        |            503 |        303 |       203 | Knee pain          |
-- |             604 | 2026-09-03        |            505 |        301 |       205 | Heart checkup      |
-- |             605 | 2026-09-03        |            506 |        305 |       203 | Back pain          |
-- +-----------------+-------------------+----------------+------------+-----------+--------------------+
-- 5 rows in set (0.01 sec)






mysql> CREATE TABLE prescription_medicine(prescription_id INT ,medicine_id INT, dosage VARCHAR(20), duration_days INT, quantity INT, CONSTRAINT pk_prescription_medicine PRIMARY KEY( prescription_id, medicine_id),
    -> CONSTRAINT fk_prescription_medicine_prescription_id FOREIGN KEY(prescription_id) REFERENCES prescription(prescription_id) ON DELETE CASCADE,
    -> CONSTRAINT fk_prescription_medicine_medicine_id FOREIGN KEY (medicine_id) REFERENCES medicine(medicine_id) ON DELETE RESTRICT);

-- Query OK, 0 rows affected (0.18 sec)



mysql> DESC prescription_medicine;

-- +-----------------+-------------+------+-----+---------+-------+
-- | Field           | Type        | Null | Key | Default | Extra |
-- +-----------------+-------------+------+-----+---------+-------+
-- | prescription_id | int         | NO   | PRI | NULL    |       |
-- | medicine_id     | int         | NO   | PRI | NULL    |       |
-- | dosage          | varchar(20) | YES  |     | NULL    |       |
-- | duration_days   | int         | YES  |     | NULL    |       |
-- | quantity        | int         | YES  |     | NULL    |       |
-- +-----------------+-------------+------+-----+---------+-------+
-- 5 rows in set (0.04 sec)



mysql> INSERT INTO prescription_medicine VALUES
    -> (601, 401, '1-0-1', 5, 10),
    -> (601, 403, '1-0-0', 5, 5),
    -> (602, 403, '1-0-0', 7, 7),
    -> (602, 406, '0-0-1', 5, 5),
    -> (603, 405, '1-0-1', 5, 10),
    -> (603, 403, '1-0-0', 5, 5),
    -> (604, 401, '1-0-1', 3, 6),
    -> (604, 403, '1-0-0', 3, 3),
    -> (605, 405, '1-0-1', 7, 14);

-- Query OK, 9 rows affected (0.01 sec)
-- Records: 9  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM prescription_medicine;

-- +-----------------+-------------+--------+---------------+----------+
-- | prescription_id | medicine_id | dosage | duration_days | quantity |
-- +-----------------+-------------+--------+---------------+----------+
-- |             601 |         401 | 1-0-1  |             5 |       10 |
-- |             601 |         403 | 1-0-0  |             5 |        5 |
-- |             602 |         403 | 1-0-0  |             7 |        7 |
-- |             602 |         406 | 0-0-1  |             5 |        5 |
-- |             603 |         403 | 1-0-0  |             5 |        5 |
-- |             603 |         405 | 1-0-1  |             5 |       10 |
-- |             604 |         401 | 1-0-1  |             3 |        6 |
-- |             604 |         403 | 1-0-0  |             3 |        3 |
-- |             605 |         405 | 1-0-1  |             7 |       14 |
-- +-----------------+-------------+--------+---------------+----------+
-- 9 rows in set (0.00 sec)






mysql> INSERT INTO appointment VALUES
    ->     (509, '2026-09-01', '10:00', 999, 201, 101, 'Completed');

-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`hospital_management`.`appointment`, CONSTRAINT `fk_appointment_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE)






mysql> SELECT * FROM patient;

-- +------------+--------------+--------+--------+
-- | patient_id | patient_name | gender | city   |
-- +------------+--------------+--------+--------+
-- |        301 | Rahul Verma  | Male   | Indore |
-- |        302 | Sneha Sharma | Female | Bhopal |
-- |        303 | Amit Patel   | Male   | Indore |
-- |        304 | Pooja Gupta  | Female | Ujjain |
-- |        305 | Rohan Jain   | Male   | Dewas  |
-- |        306 | Neha Patel   | Female | Indore |
-- +------------+--------------+--------+--------+
-- 6 rows in set (0.00 sec)



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |       201 |           101 | Completed |
-- |            502 | 2026-09-01       | 11:00:00         |        302 |       202 |           102 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           103 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |       205 |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           103 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |       201 |           101 | Scheduled |
-- |            508 | 2026-09-04       | 14:00:00         |        302 |       202 |           102 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 8 rows in set (0.00 sec)



mysql> DELETE FROM patient WHERE patient_id = 302;

-- uery OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM patient;

-- +------------+--------------+--------+--------+
-- | patient_id | patient_name | gender | city   |
-- +------------+--------------+--------+--------+
-- |        301 | Rahul Verma  | Male   | Indore |
-- |        303 | Amit Patel   | Male   | Indore |
-- |        304 | Pooja Gupta  | Female | Ujjain |
-- |        305 | Rohan Jain   | Male   | Dewas  |
-- |        306 | Neha Patel   | Female | Indore |
-- +------------+--------------+--------+--------+
-- 5 rows in set (0.00 sec)



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |       201 |           101 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           103 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |       205 |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           103 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |       201 |           101 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 6 rows in set (0.00 sec)






mysql> SELECT * FROM doctor;

-- +-----------+-------------------+----------------+---------------+
-- | doctor_id | doctor_name       | specialization | department_id |
-- +-----------+-------------------+----------------+---------------+
-- |       201 | Dr. Rajesh Sharma | Cardiologist   |           101 |
-- |       202 | Dr. Neha Verma    | Neurologist    |           102 |
-- |       203 | Dr. Amit Jain     | Orthopedic     |           103 |
-- |       204 | Dr. Priya Singh   | Dermatologist  |           104 |
-- |       205 | Dr. Karan Mehta   | Cardiologist   |           101 |
-- +-----------+-------------------+----------------+---------------+
-- 5 rows in set (0.01 sec)



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |       201 |           101 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           103 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |       205 |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           103 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |       201 |           101 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 6 rows in set (0.01 sec)



mysql> DELETE FROM doctor WHERE doctor_id = 205;

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM doctor;

-- +-----------+-------------------+----------------+---------------+
-- | doctor_id | doctor_name       | specialization | department_id |
-- +-----------+-------------------+----------------+---------------+
-- |       201 | Dr. Rajesh Sharma | Cardiologist   |           101 |
-- |       202 | Dr. Neha Verma    | Neurologist    |           102 |
-- |       203 | Dr. Amit Jain     | Orthopedic     |           103 |
-- |       204 | Dr. Priya Singh   | Dermatologist  |           104 |
-- +-----------+-------------------+----------------+---------------+
-- 4 rows in set (0.00 sec)



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |       201 |           101 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           103 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |      NULL |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           103 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |       201 |           101 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 6 rows in set (0.00 sec)






mysql> SELECT * FROM medicine;

-- +-------------+---------------+-------------------+--------+
-- | medicine_id | medicine_name | manufacturer      | price  |
-- +-------------+---------------+-------------------+--------+
-- |         401 | Paracetamol   | ABC Pharma        |  30.00 |
-- |         402 | Azithromycin  | XYZ Pharma        | 120.00 |
-- |         403 | Pantoprazole  | MedLife           |  80.00 |
-- |         404 | Amoxicillin   | HealthCare Pharma | 150.00 |
-- |         405 | Ibuprofen     | ABC Pharma        |  60.00 |
-- |         406 | Cetirizine    | MedLife           |  45.00 |
-- +-------------+---------------+-------------------+--------+
-- 6 rows in set (0.00 sec)



mysql> SELECT * FROM prescription_medicine;

-- +-----------------+-------------+--------+---------------+----------+
-- | prescription_id | medicine_id | dosage | duration_days | quantity |
-- +-----------------+-------------+--------+---------------+----------+
-- |             601 |         401 | 1-0-1  |             5 |       10 |
-- |             601 |         403 | 1-0-0  |             5 |        5 |
-- |             603 |         403 | 1-0-0  |             5 |        5 |
-- |             603 |         405 | 1-0-1  |             5 |       10 |
-- |             604 |         401 | 1-0-1  |             3 |        6 |
-- |             604 |         403 | 1-0-0  |             3 |        3 |
-- |             605 |         405 | 1-0-1  |             7 |       14 |
-- +-----------------+-------------+--------+---------------+----------+
-- 7 rows in set (0.00 sec)



mysql> DELETE FROM medicine WHERE medicine_id = 405;

-- ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`hospital_management`.`prescription_medicine`, CONSTRAINT `fk_prescription_medicine_medicine_id` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`medicine_id`) ON DELETE RESTRICT)






mysql> SELECT * FROM department;

-- +---------------+-----------------+----------+
-- | department_id | department_name | floor_no |
-- +---------------+-----------------+----------+
-- |           101 | Cardiology      |        3 |
-- |           102 | Neurology       |        4 |
-- |           103 | Orthopedics     |        2 |
-- |           104 | Dermatology     |        1 |
-- +---------------+-----------------+----------+
-- 4 rows in set (0.00 sec)



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |       201 |           101 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           103 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |      NULL |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           103 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |       201 |           101 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 6 rows in set (0.00 sec)



mysql> UPDATE department SET department_id = 106 WHERE department_id = 103;

-- Query OK, 1 row affected (0.01 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM department;

-- +---------------+-----------------+----------+
-- | department_id | department_name | floor_no |
-- +---------------+-----------------+----------+
-- |           101 | Cardiology      |        3 |
-- |           102 | Neurology       |        4 |
-- |           104 | Dermatology     |        1 |
-- |           106 | Orthopedics     |        2 |
-- +---------------+-----------------+----------+
-- 4 rows in set (0.00 sec)



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |       201 |           101 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           106 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |      NULL |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           106 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |       201 |           101 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 6 rows in set (0.00 sec)






mysql> SELECT * FROM doctor;

-- +-----------+-------------------+----------------+---------------+
-- | doctor_id | doctor_name       | specialization | department_id |
-- +-----------+-------------------+----------------+---------------+
-- |       201 | Dr. Rajesh Sharma | Cardiologist   |           101 |
-- |       202 | Dr. Neha Verma    | Neurologist    |           102 |
-- |       203 | Dr. Amit Jain     | Orthopedic     |           106 |
-- |       204 | Dr. Priya Singh   | Dermatologist  |           104 |
-- +-----------+-------------------+----------------+---------------+
-- 4 rows in set (0.00 sec)



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |       201 |           101 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           106 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |      NULL |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           106 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |       201 |           101 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 6 rows in set (0.00 sec)



mysql> UPDATE doctor SET doctor_id = 107 WHERE doctor_id = 201;

-- Query OK, 1 row affected (0.01 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM doctor;

-- +-----------+-------------------+----------------+---------------+
-- | doctor_id | doctor_name       | specialization | department_id |
-- +-----------+-------------------+----------------+---------------+
-- |       107 | Dr. Rajesh Sharma | Cardiologist   |           101 |
-- |       202 | Dr. Neha Verma    | Neurologist    |           102 |
-- |       203 | Dr. Amit Jain     | Orthopedic     |           106 |
-- |       204 | Dr. Priya Singh   | Dermatologist  |           104 |
-- +-----------+-------------------+----------------+---------------+
-- 4 rows in set (0.00 sec)



mysql> SELECT * FROM appointment;

-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- | appointment_id | appointment_date | appointment_time | patient_id | doctor_id | department_id | status    |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- |            501 | 2026-09-01       | 10:00:00         |        301 |      NULL |           101 | Completed |
-- |            503 | 2026-09-02       | 09:30:00         |        303 |       203 |           106 | Completed |
-- |            504 | 2026-09-02       | 12:00:00         |        304 |       204 |           104 | Cancelled |
-- |            505 | 2026-09-03       | 10:30:00         |        301 |      NULL |           101 | Completed |
-- |            506 | 2026-09-03       | 11:30:00         |        305 |       203 |           106 | Completed |
-- |            507 | 2026-09-04       | 09:00:00         |        306 |      NULL |           101 | Scheduled |
-- +----------------+------------------+------------------+------------+-----------+---------------+-----------+
-- 6 rows in set (0.00 sec)
