'''
    Online Exam System
    System evaluates exam conditions:

* If marks ≥ 40 → Pass
* If attendance ≥ 75 → Eligible for certificate

Input:
Enter marks: 60
Enter attendance: 80

Output:
Pass
Eligible for certificate
'''



marks = int(input("Enter marks: "))
attandance = int(input("Enter attandance: "))
if marks>=40:
    print("Pass")
if attandance>=75:
    print("Eligible for certificate")