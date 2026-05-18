'''
Mobile Number Digit Counter

A telecom company wants to count how many digits are present in a customer contact number entered with spaces or symbols.

Input:
Enter contact number: +91 98765-43210

Output:
Total digits: 12
'''


'''
number=input("Enter contact number: ")
count=0
for d in number:
    if d>="0" and d<="9":
        count+=1
print("Total digits: ",count)        
'''



number=input("Enter contact number: ")
count=0
for d in number:
    if d.isdigit():
        count+=1
print("Total digits: ",count)        