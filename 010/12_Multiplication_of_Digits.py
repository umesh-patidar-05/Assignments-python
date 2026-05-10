'''
Multiplication of Digits*
A puzzle game calculates a score by multiplying all digits of a number together. After calculating the score, the game also checks whether the final score is even or odd to assign a bonus.
Write a program to *find the product of all digits of a number using loops and then check whether the result is even or odd*.

Input: 1234
Output: 24
Even
'''


'''
n=int(input("Enter the number = "))
mul=1
while n>0:
    rem=n%10
    mul=mul*rem
    n=n//10
print(mul)
if mul%2==0:
    print("Even")
else:
    print("Odd")
'''


n=int(input("Enter the number = "))
mul=1
for i in str(n):
    mul=mul*int(i)
print(mul)
if mul%2==0:
    print("Even")
else:
    print("Odd")