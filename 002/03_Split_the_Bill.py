'''
========================================
Assignment 3: Split the Bill
========================================

You and your friends went out to eat. The bill was quite high and you want to split it evenly.

Write a Python program that:
- Accepts the total bill amount.
- Accepts the number of friends.
- Displays how much each person should pay.

Example:
Total bill = 1250
Friends = 5
Each should pay = 250.0
'''




total= int(input("Enter total bill amount : "))
friends= int(input("Enter number of friends : "))
split = total/friends
print("Total bill = ",total)
print("Friends = ",friends)
print("Each should pay =",split)