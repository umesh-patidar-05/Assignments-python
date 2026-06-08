'''
=========================================
ONLINE COURSE ENROLLMENT SYSTEM
=========================================

An institute offers:
1. Python Course
2. Java Course

Store enrolled student email IDs using sets.

Menu:
1. Enroll Student in Python
2. Enroll Student in Java
3. Display Python Students
4. Display Java Students
5. Find Students Enrolled in Both Courses
6. Find Students Enrolled Only in Python
7. Find Students Enrolled Only in Java
8. Check Enrollment in Python Course
9. Display Total Unique Students
10. Exit

Requirements:
- Use two sets.
- Use membership operator (in).
- Use union, intersection and difference operations.
'''




python_course=set()
java_course=set()

while True:
    print("""\n
=========================================
ONLINE COURSE ENROLLMENT SYSTEM
=========================================  """)
    print("\nMenu:")
    print("1. Enroll Student in Python")
    print("2. Enroll Student in Java")
    print("3. Display Python Students")
    print("4. Display Java Students")
    print("5. Find Students Enrolled in Both Courses")
    print("6. Find Students Enrolled Only in Python")
    print("7. Find Students Enrolled Only in Java")
    print("8. Check Enrollment in Python Course")
    print("9. Display Total Unique Students")
    print("10. Exit")
  
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            n=int(input("\nEnter number of students in Python: "))
            for i in range(n):
                python_course.add(input(f"Enter email ID of student {i+1}: "))

        case 2:
            n=int(input("\nEnter number of students in Java: "))
            for i in range(n):
                java_course.add(input(f"Enter email ID of student {i+1}: "))        

        case 3:
            print("\npython students are: ")    
            for i in python_course:
                print(i,end=" ")

        case 4:
            print("\nJava Students are: ") 
            for i in java_course:
                print(i,end=" ")       

        case 5:
            print("\nstudents in both Courses are: ")
            for i in python_course.intersection(java_course):
                print(i,end=" ")

        case 6:
            print("\nStudents Enrolled Only in Python are: ")
            for i  in python_course.difference(java_course):
                print(i,end=" ") 

        case 7:
            print("\nStudents Enrolled Only in Java are: ")
            for i in java_course.difference(python_course):
                print(i,end=" ")

        case 8:
            s=input("\nEnter student email ID: ")
            if s in python_course:
                print("\nstudent already enrolled")
            else:
                print("\nstudent not enrolled")        

        case 9:
            print("\nTotal Unique Students are: ")
            print(len(java_course.union(python_course))) 

        case 10:
            print("\nThankyouuuuu")
            break

        case _:
            print("\ninvalid choice")