'''
=========================================
FROZEN SET SUBJECT MANAGEMENT
=========================================

An institute offers fixed subjects:

Python
Java
MySQL
React
Spring Boot

These subjects cannot be modified after creation.

Menu:
1. Display Subjects
2. Search Subject
3. Count Subjects
4. Attempt to Add Subject
5. Exit

Requirements:
- Use Frozen Set.
- Show that modification is not allowed.
'''



subject=frozenset({"Python","Java","MySQL","React","Spring Boot"})

while True:
    print("""\n
=========================================
FROZEN SET SUBJECT MANAGEMENT
=========================================  """)
    print("\nMenu:")
    print("1. Display Subjects")
    print("2. Search Subject")
    print("3. Count Subjects")
    print("4. Attempt to Add Subject")
    print("5. Exit")
  
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            print("\nsubjects are:")
            for i in subject:
                print(i,end=" ")
        case 2:
            sub=input("\nEnter subject name for search: ")         
            if sub in subject:
                print("\nsubject is available")
            else:
                print("\nsubject is NOT available")

        case 3:
            print("\nsubject count are: ",len(subject))

        case 4:
            sub=input("Enter subject to add: ")    
            subject.add(sub)
       

        case 5:
            print("\nThankyouuuuu")
            break

        case _:
            print("\ninvalid choice")