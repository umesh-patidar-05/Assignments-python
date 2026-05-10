'''
Assignment 13: Compound Interest Calculator

A = P*(1 + r/100)^t
CI = A − P

Write a Python program that:

Accepts principal, rate, and time.
Calculates compound interest.

Input:
Principal = 1000
Rate = 10
Time = 2

Output:
Amount = 1210.0
Compound Interest = 210.0
'''



p = int(input("Enter principal = "))
r = int(input("Enter rate = "))
t = int(input("Enter time = "))
amount = p * (1+r/100)**t
ci = amount-p
print("Amount = ",round(amount,2))
print("Compound Interest = ",round(ci,2))