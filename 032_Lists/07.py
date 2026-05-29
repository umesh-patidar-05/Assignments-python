'''
Factory Production – Factorial Expansion List

Problem Statement

A factory produces items where production capacity is defined using factorial growth.

Given a list of numbers, replace each number with its factorial value.

Then perform analysis on the resulting list.

Tasks:

Convert each element to factorial
Find sum of all factorial values
Find maximum factorial value
Count how many factorial values are even

Input:
A list of integers

Example 1

Input:
[3, 4, 5]

Processing:
3! = 6
4! = 24
5! = 120

Output:
[6, 24, 120]
Sum = 150
Max = 120
Even Count = 3
'''





n=int(input("Enter size "))
arr=[]
for i in range(n):
    arr.append(int(input(f"Enter element {i+1}: ")))
#print("array =",arr)  

factlist=[]
for i in arr:
    fact=1
    for j in range(1,i+1):
        fact=fact*j
    factlist.append(fact)
    
print(factlist)    

max=0
sum=0
evencount=0
for i in factlist:
    sum=sum+i
    if i>max:
        max=i
    if i%2==0:
        evencount+=1

print("sum =",sum)
print("max =",max)
print("Even count",evencount)        