'''
Vehicle Number Plate Checker

The traffic department wants to validate vehicle registration numbers.

Conditions:
- First 2 characters should be alphabets
- Next 2 should be digits
- Total length should be 10

Input:
Enter vehicle number: MP04AB1234

Output:
Valid Vehicle Number
'''


num=input("Enter vehicle number: ")
l=len(num)
if l>=10:
    if num[:2].isalpha():
        if num[2:4].isdigit():
            if num[4:].isalnum():
                print("Valid Vehicle Number")
            else:
                print("Invalid Vehicle Number")
        else:
            print("Inalid Vehicle Number")
    else:
        print("Inalid Vehicle Number")
else:
    print("Inalid Vehicle Number")