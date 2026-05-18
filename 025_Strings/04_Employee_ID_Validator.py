'''
Employee ID Validator

A company wants to validate employee IDs before storing them in the database.

Conditions:
- ID must start with "EMP"
- Total length should be 8
- Remaining characters should be digits only

Input:
Enter Employee ID: EMP10234

Output:
Valid Employee ID
'''

id=input("Enter Employee ID: ").upper()
if len(id)==8:
    if id.startswith("EMP"):
        i=3
        while i<len(id):
            if id[i].isdigit():
                pass
            else:
                print("Invalid ID")
                break
            i+=1
        else:    
            print("Valid Id")        
    else:
        print("Invalid ID")
else:
    print("Invalid ID")