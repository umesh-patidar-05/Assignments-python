'''
Count Odd Digits*
A banking system flags IDs with too many odd digits for further verification.
Write a program to *count the number of odd digits in a given number using loops*.

Input: 123456
Output: Odd digits count = 3
'''


'''
n = int(input("enter id "))
count=0
while n>0:
    if (n%10)%2!=0:
        count = count +1
        n=n//10
    else:
        n=n//10
print("Odd digits count = ",count )
'''


n=int(input("Enter id: "))
count=0
for i in str(n):
    if int(i)%2!=0:
        count+=1
print("Odd digits count = ",count)