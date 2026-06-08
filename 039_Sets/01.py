'''
=========================================
STUDENT CLUB MEMBERSHIP SYSTEM
=========================================

A college has two clubs:
1. Coding Club
2. Robotics Club

Store student IDs of both clubs using sets.

Menu:
1. Add Student to Coding Club
2. Add Student to Robotics Club
3. Display Students in Coding Club
4. Display Students in Robotics Club
5. Find Students in Both Clubs
6. Find Students Only in Coding Club
7. Find Students Only in Robotics Club
8. Display All Unique Club Members
9. Display Total Unique Club Members
10. Exit

Requirements:
- Use two sets.
- Apply intersection, difference, and union operations.
'''


coding_club=set()
robotics_club=set()

while True:
    print("""\n
=========================================
STUDENT CLUB MEMBERSHIP SYSTEM
=========================================  """)
    print("\nMenu:")
    print("1. Add Student to Coding Club")
    print("2. Add Student to Robotics Club")
    print("3. Display Students in Coding Club")
    print("4. Display Students in Robotics Club")
    print("5. Find Students in Both Clubs")
    print("6. Find Students Only in Coding Club")
    print("7. Find Students Only in Robotics Club")
    print("8. Display All Unique Club Members")
    print("9. Display Total Unique Club Members")
    print("10. Exit")
  
    choice=int(input("Enter your choice: "))
    match choice:
        case 1:
            n=int(input("\nEnter number of students in coding club: "))
            for i in range(n):
                coding_club.add(input(f"Enter id of student {i+1}: "))

        case 2:
            n=int(input("\nEnter number of students in robotics club: "))
            for i in range(n):
                robotics_club.add(input(f"Enter id of student {i+1}: "))        

        case 3:
            print("\nstudents in coding club are: ")    
            for i in coding_club:
                print(i,end=" ")

        case 4:
            print("\nStudents in robotics club are: ") 
            for i in robotics_club:
                print(i,end=" ")       

        case 5:
            print("\nstudents in both club are: ")
            for i in coding_club.intersection(robotics_club):
                print(i,end=" ")

        case 6:
            print("\nStudents Only in Coding Club are: ")
            for i  in coding_club.difference(robotics_club):
                print(i,end=" ") 

        case 7:
            print("\nStudents Only in Robotics Club are: ")
            for i in robotics_club.difference(coding_club):
                print(i,end=" ")

        case 8:
            print("\nAll Unique Club Members are: ") 
            for i in robotics_club.union(coding_club):
                print(i,end=" ")       

        case 9:
            print("\nTotal Unique Club Members are: ")
            print(len(robotics_club.union(coding_club))) 

        case 10:
            print("\nThankyouuuuu")
            break

        case _:
            print("\ninvalid choice")
                       