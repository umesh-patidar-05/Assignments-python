'''
Fibonacci Series Generator

A learning app helps students understand number patterns. One of the most important patterns is the Fibonacci series, where each number is the sum of the previous two numbers.

The series starts with:
0 1

Write a program to:

- Read a number n (number of terms)
- Print the Fibonacci series up to n terms using a loop

Input:
7

Output:
0 1 1 2 3 5 8
'''




n=int(input("Enter number of terms: "))
d1=0
d2=1
s=0
st=""
for i in range(1,n-1):
    s=d1+d2
    st= st + str(s) + " "
    d1=d2
    d2=s
fib= "0 1 "+ st
print(fib)