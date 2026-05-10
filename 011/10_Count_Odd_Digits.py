'''
Student ID Validity Checker (Count Odd Digits)
A school management system assigns numeric IDs to students. The administration wants to verify IDs by checking how many odd digits are present in each ID number. IDs with more odd digits are sent for manual review.

Write a program to count the number of odd digits in a given student ID using loops.

Input:
572943

Output:
Odd Digits Count = 4
'''



'''
id=int(input("ID = "))
count=0
while id>0:
    rem=id%10
    if (rem%2)!=0:
        count+=1
    id=id//10
print("Odd digits count = ",count)
'''




n=int(input("ID = "))
count=0
for i in str(n):
    if int(i)%2!=0:
        count+=1
print("Odd digits count = ",count)