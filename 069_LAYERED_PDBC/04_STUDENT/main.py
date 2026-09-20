from service.student_service import StudentService
from model.student import Student



while True:
    print("1. display all students")
    print("2. Add new student")
    print("3. find student using roll no")
    print("4. update studnt usign roll no")
    print("5. delete student using roll no")
    print("6. EXIT")

    choice = int(input("Enter your choice: "))
    match choice:
        case 1:
    
            service = StudentService()
            students = service.read_all_student()
            for student in students:
                print(student.roll)
                print(student.name)
                print(student.department)
                print("-------------------")

        case 2:
            roll = int(input("Enter student roll no: "))
            name = input("Enter student name: " )
            dept = input("Enter dapartment name: ")
            student = Student(roll, name, dept)
            service = StudentService()
            add = service.insert_new_student(student)
            print(add)

        case 3:
            roll = int(input("Enter student roll no: "))
            service = StudentService()
            student = service.find_student_by_roll(roll)
            if student != None:
                print("Roll no: ", student[0])
                print("Name: ", student[1])
                print("Department: ", student[2])
            else:
                print("NO student avialable with this roll no")    

        case 4:
            roll = int(input("Enter student roll no: "))
            dept = input("Enter new department: ")
            service = StudentService()
            service.change_student_department_by_roll(roll, dept)

        case 5:
            roll = int(input("Enter student roll no: "))
            service = StudentService()
            service.remove_student_by_roll_no(roll)

        case 6:
            print("Thank youu....")
            break

        case _:
            print("invalid choice....")        