'''
Product Except Self
======================

Scenario

For every element, calculate the product of all other elements except itself.

Requirements

* Read N and list elements from user
* Create a new list containing products
* Display the result

Test Case 1

Input:
[1, 2, 3, 4]

Output:
[24, 12, 8, 6]

Test Case 2

Input:
[2, 3, 5]

Output:
[15, 10, 6]

---
'''




#SOLUTION 1  

n=int(input("Enter length: "))
list=[]
for i in range(n):
    list.append(int(input(f"Enter Element{i+1}: ")))
#print(list)
print()


res=[]
for i in range(n):
    product=1
    for j in range(n):
        if i!=j:
            product=product*list[j]
    res.append(product)
print(res)    




#SOLUTION 2
#THIS ONLY WORK WITH WHEN NUMBER IS NOT REPEAT IN THE LIST
'''
n=int(input("Enter length: "))
list=[]
for i in range(n):
    list.append(int(input(f"Enter Element{i+1}: ")))
#print(list)
print()

res=[]
for i in list:
    product=1
    for j in list:
        if i!=j:
            product*=j
            
    res.append(product)

print(res)    
'''



