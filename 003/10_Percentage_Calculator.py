'''
Assignment 10: Percentage Calculator

Write a Python program that:

Accepts total marks and obtained marks.
Calculates percentage.

Input:
Total = 500
Obtained = 400

Output:
Percentage = 80%
'''



'''
total,obtained = map(int,input("Enter total marks and obtained marks. ").split())
percentage = (obtained/total)*100
print(f"Percentage = {percentage}%")
'''



total=int(input("Total = "))
obtained=int(input("Obtained = "))
percentage=(obtained/total)*100
print("Percnetage =" ,percentage)