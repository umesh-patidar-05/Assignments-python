'''
Assignment 6: Data Storage Conversion

A user wants to convert data from GB into MB and KB.

Input:
Data = 5 GB

Expected Output:
In MB = 5120.0
In KB = 5242880.0
'''


gb = int(input("Data in GB = "))
mb = gb*1024
kb = mb*1024
print("In MB = ",mb)
print("In KB = ",kb)