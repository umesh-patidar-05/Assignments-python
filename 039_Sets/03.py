'''
=========================================
WEBSITE VISITOR TRACKING SYSTEM
=========================================

A website stores unique visitor IDs.

Menu:
1. Add Visitor
2. Remove Visitor
3. Check Visitor
4. Display All Visitors
5. Count Unique Visitors
6. Clear Visitor Data
7. Exit

Requirements:
- Use a set to store visitor IDs.
- Duplicate visitor IDs should not be stored.
- Use add(), remove(), and membership operations.
'''




visitor=set()

while True:
    print("""\n
=========================================
WEBSITE VISITOR TRACKING SYSTEM
=========================================  """)
    print("\nMenu:")
    print("1. Add Visitor")
    print("2. Remove Visitor")
    print("3. Check Visitor")
    print("4. Display All Visitors")
    print("5. Count Unique Visitors")
    print("6. Clear Visitor Data")
    print("7. Exit")
  
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            n=int(input("\nEnter number of visitors: "))
            for i in range(n):
                visitor.add(input(f"Enter visitor {i+1} id: "))
        case 2:
            idd=input("\nEnter visitor id to remove visitor: ")
            if idd in visitor:
                visitor.remove(idd)
                print(f"\nvisitor with id {idd} removed succesfully") 
            else:
                print(f"\n visitor with id {idd} not available")          

        case 3:
            idd=input("\nEnter visitor id for  search: ")
            if idd in visitor:
                print("\nvisitor available") 
            else:
                print("\nvisior not available")      
        case 4:
            print("\nAll Visitors are: ")    
            for i in visitor:
                print(i,end=" ")       

        case 5:
           print("\nunique visitors count = ",len(visitor))

        case 6:
            visitor.clear()
            print("\nvisitor data clear successfully") 

        case 7:
            print("\nThankyouuuuu")
            break

        case _:
            print("\ninvalid choice")