'''
Email Username Validator

A company wants to check whether an employee email username is valid before creating an official account.

Conditions:
- Username should start with a letter
- Username can contain letters, digits, underscore (_)
- No spaces allowed
- Length should be between 5 and 12 characters

Input:
Enter username: ajay_123

Output:
Valid Username
'''


'''
name=input("Enter username: ")
l=len(name)
space=0
contain=0
special=0
if l>=5 and l<=12: 
    if name[0].isalpha():
        for n in name:
            if n.isspace():
                space=1
            elif n.isdigit() or n.isalpha() or n=="_":
                contain=1
            else:
                special=1  
        if space==0 and special==0 and contain==1:
            print("Valid username")
        else:
            print("invalid username")
    else:
        print("Invalid username")
else:
    print("Invalid username")    
'''




name=input("Enter username: ").lower()
l=len(name)
space=0
contain=0
special=0
if l>=5 and l<=12: 
    if name[0]>="a" and name[0]<="z":
        for n in name:
            if n==" ":
                space=1
            elif n>="0" and n<="9":
                contain=1
            elif n>="a" and n<="z" :
                contain=1
            elif n=="_":
                contain=1
            else:
                special=1  
        if space==0 and special==0 and contain==1:
            print("Valid username")
        else:
            print("invalid username")
    else:
        print("Invalid username")
else:
    print("Invalid username")        