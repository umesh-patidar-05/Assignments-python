'''
Assignment 14: Simple Profit or Loss Calculator

Write a Python program that:

Accepts cost price and selling price.
Calculates profit/loss and percentage.

Input:
Cost Price = 1000
Selling Price = 1200

Output:
Profit = 200
Profit % = 20.0
'''



cp = int(input("Enter cost price = "))
sp = int(input("Enter selling price = "))

if  sp-cp > 0:
	profit = sp-cp
	profitp = (profit/cp)*100
	print("Profit = ",profit)
	print("Profit % = ",profitp)
else:
	loss = cp-sp
	lossp = (loss/cp)*100
	print("Loss = ",loss)
	print("Loss % = ",lossp)
