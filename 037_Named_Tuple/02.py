'''
=====================================================================
QUESTION 2: STUDENT RESULT PROCESSING
=====================================

A training institute wants to manage student records using NamedTuple.

Fields:
roll_no, name, course, marks

Requirements:

1. Read N student records from the user and store them in a list of NamedTuples.

---

2. Display all student details.

---

3. Find and display the topper of the class.

---

4. Count and display the number of students scoring above 80 marks.

---

5. Calculate and display the average marks.

---

6. Accept a course name from the user and display all students enrolled in that course.

---

Test Case:

Input:
Enter number of students: 4

1 Ravi Python 85
2 Anjali Java 78
3 Karan Python 92
4 Pooja Testing 88

Enter course: Python

Expected Output:
Topper:
3 Karan Python 92

Students Above 80:
3

Average Marks:
85.75

Students in Python Course:
1 Ravi Python 85
3 Karan Python 92
'''



from collections import namedtuple
n=int(input("Enter number of students: "))
student=namedtuple("student",["roll_no", "name", "course", "marks"])
stu=[]
for i in range(n):
    print(f"\nEnter student {i+1} details: ")
    roll=int(input("Enter roll no: "))
    nam=input("Enter name: ")
    cour=input("Enter course: ")
    mark=int(input("Enter marks: "))
    stu.append(student(roll,nam,cour,mark))
#print(stu)

find_stu=input("\nEnter course: ")

for i in stu:
    print(i.roll_no,i.name,i.course,i.marks)

topper=stu[0]
count_above_80=0
summ=0
for i in range(n):
    if stu[i].marks>topper.marks:
        topper=stu[i]
    if stu[i].marks>80:
        count_above_80+=1
    summ+=stu[i].marks

print("\nTopper:") 
print(topper.roll_no,topper.name,topper.course,topper.marks) 

print("\nStudents Above 80:")
print(count_above_80)

print("\nAverage Marks:")
avg=summ/n
print(round(avg,2))

print(f"\nStudents in {find_stu} Course:")
for i in stu:
    if i.course==find_stu:
        print(i.roll_no,i.name,i.course,i.marks)