'''
=========================================
ALLOWED CHARACTER VALIDATOR
=========================================

Allowed characters are:
A-Z, a-z, 0-9

Store allowed characters in a Frozen Set.

Menu:
1. Enter Username
2. Validate Username
3. Display Allowed Characters
4. Exit

Requirements:
- Use Frozen Set.
- Username should contain only allowed characters.
'''



allowed = frozenset("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789")
name=""

while True:
    print("""\n
=========================================
ALLOWED CHARACTER VALIDATOR
=========================================  """)
    print("\nMenu:")
    print("1. Enter Username")
    print("2. Validate Username")
    print("3. Display Allowed Characters")
    print("4. Exit")
  
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            name=input("\nEnter username: ")
        
        case 2:
            if set(name).issubset(allowed):
                print("\nusername is Valid")
            else:
                print("\nusername is NOT Valid")

        case 3:
            print("\nAllowed Characters are: ")
            for i in allowed:
                print(i,end=" ")
                    
        case 4:
            print("\nThankyouuuuu")
            break

        case _:
            print("\ninvalid choice")