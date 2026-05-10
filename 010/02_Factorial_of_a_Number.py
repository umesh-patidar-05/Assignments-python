'''
Factorial of a Number
In project scheduling, tasks are dependent on previous tasks, and the total number of ways to arrange them is calculated using factorial. Factorial of a number n is the product of all numbers from 1 to n.
Write a program to calculate the *factorial of a given number using loops*.

Input: n = 5
Output: Total Ways = 120
'''



'''
n = int(input("enter value of n "))
fact =1
while n>=1:
    fact = fact*n
    n-=1
print("factorial is = ",fact)    
'''




n=int(input("n = "))
fact=1
for i in range(1,n+1):
    fact=fact*i
print("Total ways = ",fact)

	