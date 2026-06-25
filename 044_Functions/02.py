'''
2.
Hospital Management System – Oldest Patient

A hospital wants to give priority to the oldest patient during a free health check-up camp. The patient details are stored as tuples containing the patient's name and age.

As a Python developer, write a program to identify the oldest patient using the reduce() function with a lambda expression.

Input
patients = [
    ("Rahul", 45),
    ("Sneha", 62),
    ("Amit", 38),
    ("Kiran", 71),
    ("Pooja", 55)
]
Expected Output
Oldest Patient: Kiran
'''




from functools import reduce
patients=[]
n=int(input("Enter number of patients: "))
for i in range(n):
    print(f"\nEnter patient {i+1} details: ")
    name=input("Enter name: ")
    age=int(input("Enter age: "))
    patients.append((name,age))

res=reduce(lambda x,y: x if x[1]>y[1] else y, patients)    
print("Oldest Patient:",res[0])