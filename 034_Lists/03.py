'''
A company stores employee salaries in a list. Employees earning less than ₹30,000 receive a ₹5,000 bonus.

Requirements
Read N and salaries from user
Use List Comprehension
Create Updated Salary List after bonus
Display updated salaries
Test Case

Input:

[25000, 35000, 28000, 50000]

Output:

Updated Salary List = [30000, 35000, 33000, 50000]
'''



n=int(input("Enter length: "))
list=[]
for i in range(n):
    list.append(int(input("Enter element ")))
#print(list)
passs=[i+5000 if i<30000 else i  for i in list]
print("updated salary list =",passs)