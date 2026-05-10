'''
Palindrome Check
A number plate is considered special if it reads the same forward and backward. Such numbers are called palindromes.
Write a program to *check whether a given number is a palindrome using loops*.

Input: 121
Output: Palindrome
'''  


'''
n = int(input("Enter a number"))
rev=0
temp=n
while n>0:
    rem=n%10
    rev=rev*10+rem
    n=n//10
if rev==temp:
    print("palindrome")
else:
    print("Not palindrome")
'''



n=int(input("Enter the number: "))
rev=""
for i in str(n):
    rev=i+rev
rev=int(rev)
if rev==n:
    print("Palindrome")
else:
    print("Not palindrome")    