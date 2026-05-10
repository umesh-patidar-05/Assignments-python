'''
Assignment 6: Discount Calculator

Write a Python program that:

Accepts total amount.
Calculates 10% discount and final price.

Input:
Amount = 1000

Output:
Discount = 100
Final = 900
----------------------------------------------------------------
'''



total = int(input("Enter total amount"))
discount = (total*10)//100
final = total - discount
print("Discount = ",discount)
print("Final = ",final)