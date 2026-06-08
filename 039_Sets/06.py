'''
=========================================
COMMON CHARACTER FINDER
=========================================

Enter two strings and find common characters.

Menu:
1. Enter First String
2. Enter Second String
3. Display Common Characters
4. Count Common Characters
5. Exit

Example:
String1: python
String2: typhoon

Output:
{'y', 'n', 't', 'o', 'p', 'h'}
'''




s1=""
s2=""
while True:
    print("""\n
=========================================
COMMON CHARACTER FINDER
=========================================  """)
    print("\nMenu:")
    print("1. Enter First String")
    print("2. Enter Second String")
    print("3. Display Common Characters")
    print("4. Count Common Characters")
    print("5. Exit")
  
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            s1=input("\nEnter First String: ")
            
        case 2:
            s2=input("\nEnter Second String: ")      

        case 3:
            print("\nCommon Characters are: ")
            print(set(s1).intersection(s2))
                    
        case 4:
            print("\nCommon Characters count are: ",end=" ")    
            print(len(set(s1).intersection(s2)))

        case 5:
            print("\nThankyouuuuu")
            break

        case _:
            print("\ninvalid choice")