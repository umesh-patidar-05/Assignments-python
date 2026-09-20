
from dao.student_dao import StudentDao

class StudentService:

    def read_all_student(self):
        dao = StudentDao()
        students = dao.see_all_student()
        return students

    def insert_new_student(self, student):
        dao = StudentDao()
        return dao.add_new_student(student)

    def find_student_by_roll(self, roll):
        dao = StudentDao()
        return dao.see_student_by_roll(roll)

    def change_student_department_by_roll(self,roll, dept):
        dao = StudentDao()
        dao.update_student_department_by_roll_no(roll, dept)

    def remove_student_by_roll_no(self, roll):
        dao = StudentDao()
        dao.delete_student_by_roll_no(roll)    