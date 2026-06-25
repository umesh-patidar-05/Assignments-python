'''
5.
 Hospital Record System (Search Digit)


A hospital stores patient IDs as numbers. The administrator wants to verify whether a specific digit exists in a patient ID.

Task

Write a recursive function to determine whether a given digit is present.

Input
Enter Patient ID:
5837264

Enter Digit:
7
Output
Digit Found
'''



def search_digit(num, digit):
    if num == 0:
        return False

    if num % 10 == digit:
        return True

    return search_digit(num // 10, digit)


patient_id = int(input("Enter Patient ID: "))
digit = int(input("Enter Digit: "))

if search_digit(patient_id, digit):
    print("Digit Found")
else:
    print("Digit Not Found")