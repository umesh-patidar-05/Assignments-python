from database.connection import DataBase
from model.student import Student

class StudentDao:

    def see_all_student(self):
        db = DataBase()
        conn = db.connect()
        cursor = conn.cursor()
        query = "SELECT * FROM studentpd"
        cursor.execute(query)
        rows = cursor.fetchall()
        students = []
        for row in rows:
            student = Student(row[0], row[1], row[2])
            students.append(student)
        return students    

    def add_new_student(self, student):
        db = DataBase()
        conn = db.connect()
        cursor = conn.cursor()
        query = "INSERT INTO studentpd VALUES( %s, %s, %s)"
        data = (student.roll, student.name, student.department)
        cursor.execute(query, data)
        conn.commit()
        return "Student added successfully"


    def see_student_by_roll(self, roll):
        db = DataBase()
        conn = db.connect()
        cursor = conn.cursor()
        query = "SELECT * FROM studentpd WHERE rollno = %s"
        cursor.execute(query, (roll,))
        student = cursor.fetchone()
        return student

    def update_student_department_by_roll_no(self, roll, dept):
        db = DataBase()
        conn = db.connect()
        cursor = conn.cursor()
        query = "UPDATE studentpd SET department = %s WHERE rollno = %s"
        cursor.execute(query, (dept, roll))
        conn.commit()
        if cursor.rowcount != 0:
            print("student update successfully")

        else:
            print("no student found")    

    def delete_student_by_roll_no(self, roll):
        db = DataBase()
        conn = db.connect()
        cursor = conn.cursor()
        query = "DELETE FROM studentpd WHERE rollno = %s"
        cursor.execute(query, (roll,))
        conn.commit()
        if cursor.rowcount !=0:
            print("student delete successfully")
        else:
            print("NO student existes with this roll no")    