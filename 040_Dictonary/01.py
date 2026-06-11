'''
=========================================
ONLINE SHOPPING CART
====================

A shopping website stores purchased products in a dictionary where:
Key = Product Name
Value = Quantity Purchased

Write a program to:

* Accept a dictionary from the user.
* Calculate and display the total quantity of products purchased.

Sample Input:
{"Laptop":2,"Mouse":3,"Keyboard":1}

Sample Output:
Total Quantity = 6

'''

n=int(input("Enter total number of products: "))
dic={}
for i in range(n):
    product=input("Enter product name: ")
    quantity=int(input("Enter quantity: "))
    dic[product]=quantity
#print(dic) 
print("Total quantity = ",sum(dic.values()))   