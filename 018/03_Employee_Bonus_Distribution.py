'''
Employee Bonus Distribution System
A company provides bonuses based on years of experience.
Experience >10 years → 30% bonus
Experience >5 years → 20% bonus
Otherwise → 10% bonus
Write a program to calculate the total salary after adding bonus using inline if.
'''

sal=int(input("Enter salary"))
exp=int(input("Enter experience"))
total = sal+sal*30//100 if exp>10 else sal+sal*20//100 if exp>5 else sal+sal*10//100 
print("Total salary =",total)
