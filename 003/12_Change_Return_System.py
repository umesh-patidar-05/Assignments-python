'''
Assignment 12: Change Return System

Write a Python program that:

Accepts amount.
Calculates ₹100, ₹50, ₹10 notes.

Input:
Amount = 380

Output:
₹100 x 3
₹50 x 1
₹10 x 3
'''


amount = int(input("Enter Amount : "))
calc100 = amount//100
calc50 = (amount%100)//50
calc10 = (amount%50)//10
print("₹100 x ",calc100)
print("₹50 x ",calc50)
print("₹10 x ",calc10)