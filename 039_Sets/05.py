'''
=========================================
LIBRARY ISBN MANAGER
=========================================

A library stores unique ISBN numbers of books.

Menu:
1. Add ISBN
2. Remove ISBN
3. Search ISBN
4. Display ISBN List
5. Count Books
6. Exit

Requirements:
- Use Set.
- Duplicate ISBNs are not allowed.
'''





isbn=set()

while True:
    print("""\n
=========================================
LIBRARY ISBN MANAGER
=========================================  """)
    print("\nMenu:")
    print("1. Add ISBN")
    print("2. Remove ISBN")
    print("3. Search ISBN")
    print("4. Display ISBN List")
    print("5. Count Books")
    print("6. Exit")
  
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            n=int(input("\nEnter number of books: "))
            for i in range(n):
                isbn.add(input(f"Enter book {i+1} ISBN: "))
        case 2:
            isb=input("\nEnter ISBN number to remove book: ")
            if isb in isbn:
                isbn.remove(isb)
                print(f"\nbook with ISBN {isb} removed succesfully") 
            else:
                print(f"\nbook with ISBN {isb} not available")          

        case 3:
            isb=input("\nEnter ISBN for  search book : ")
            if isb in isbn:
                print("\nISBN available") 
            else:
                print("\nISBN not available")      
        case 4:
            print("\nAll ISBN are: ")    
            for i in isbn:
                print(i,end=" ")       

        case 5:
           print("\nbooks count = ",len(isbn))

        case 6:
            print("\nThankyouuuuu")
            break

        case _:
            print("\ninvalid choice")