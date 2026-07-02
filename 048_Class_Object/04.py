'''
Question 4: Student Result Processing System
Scenario

A college wants to automate result generation by calculating total marks, percentage, and grade.

Requirements

Create a class named Student with:

Student
student_name
marks1
marks2
marks3

Initialize the values using a constructor.

Calculations
Total = Marks1 + Marks2 + Marks3
Percentage = Total / 3
Grade Criteria
Percentage	Grade
90 and above	A
75 to 89	B
60 to 74	C
Below 60	D
Sample Input
Enter Roll Number : 101
Enter Student Name : Priya Sharma
Enter Marks in Subject 1 : 85
Enter Marks in Subject 2 : 90
Enter Marks in Subject 3 : 88
Sample Output
------ Student Result ------
Roll Number      : 101
Roll Number      : 101
Total Marks      : 263
Percentage       : 87.67
Grade            : B
'''





class Student:
    def __init__(self,student_rollno,student_name,marks1,marks2,marks3):
        self.student_name = student_name
        self.student_rollno = student_rollno
        self.marks1 = marks1
        self.marks2 = marks2
        self.marks3 = marks3

    def Calculations(self):
        self.total = self.marks1 + self.marks2 + self.marks3
        self.percentage = self.total/3
        if self.percentage >= 90:
            self.grade = "A"
        elif self.percentage >= 75:    
            self.grade = "B"
        elif self.percentage >= 60:    
            self.grade = "C"
        else:
            self.grade = "D"

    def result(self):
        print("------ Student Result ------")
        print("Roll Number      :",self.student_rollno)
        print("Student Name     :",self.student_name)
        print("Total Marks      :",self.total)
        print("Percentage       :",round(self.percentage,2))
        print("Grade            :",self.grade)

roll=int(input("Enter Roll Number : "))
name=input("Enter Student Name : ")
sub1=int(input("Enter Marks in Subject 1 : "))
sub2=int(input("Enter Marks in Subject 2 : "))
sub3=int(input("Enter Marks in Subject 3 : "))
print()
s1=Student(roll, name, sub1, sub2, sub3)
s1.Calculations()
s1.result()