'''
Fibonacci Population Growth Tracker

A wildlife research team is studying the growth of a rare species.  
They observe that the population follows a Fibonacci pattern:

- Month 1 → 0 animals  
- Month 2 → 1 animal  
- Every next month → sum of previous two months  

The researchers want to analyze the growth pattern.

Write a program to:

- Read number of months n
- Generate Fibonacci series up to n months using loop
- Print population for each month
- Find total population observed
- Count how many months population exceeded 5

Input:
8

Output:
Population Growth:
0 1 1 2 3 5 8 13

Total Population = 33
Months with Population > 5 = 2
'''




n=int(input("Enter number of months n : "))
m1=0
m2=1
s=0
ps=0
st=""
count=0
for i in range(1,n-1):
    s=m1+m2
    if s>5:
        count+=1
    ps=ps+s
    st= st + str(s) + " "
    m1=m2
    m2=s
fib= "0 1 "+ st
print("Population Growth:\n",fib)
print("Total Population =",ps+1)
print("Months with Population > 5 =",count)