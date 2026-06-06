'''
=====================================================================
QUESTION 4: ONLINE SHOPPING ORDERS
==================================

An online shopping company stores customer orders using NamedTuple.

Fields:
order_id, customer_name, product_name, amount

Requirements:

1. Read N order records from the user and store them in a list of NamedTuples.

--- 

2. Display all order details.

---

3. Find and display the order having the highest amount.

---

4. Calculate and display total sales.

---

5. Count the number of orders whose amount is greater than ₹10,000.

---

Test Case:

Input:
Enter number of orders: 5

O101 Rahul Laptop 55000
O102 Priya Mouse 800
O103 Amit Mobile 25000
O104 Neha Keyboard 1500
O105 Rakesh TV 45000

Expected Output:
Highest Value Order:
O101 Rahul Laptop 55000

Total Sales:
127300

Orders Above ₹10,000:
3
'''



from collections import namedtuple
n=int(input("Enter number of orders: "))
orderdetail=namedtuple("orderdetail",["order_id", "customer_name", "product_name", "amount"])
order=[]
for i in range(n):
    print(f"\nEnter order {i+1} details: ")
    idd=input("Enter id: ")
    cnam=input("Enter customer name: ")
    pnam=input("Enter product name: ")
    amou=int(input("Enter amount: "))
    order.append(orderdetail(idd,cnam,pnam,amou))
#print(order)    

print("\nOrder detais are: ")
for i in order:
    print(i.order_id,i.customer_name,i.product_name,i.amount)
    
high_amount=0 
amount_sum=0
count_above10000=0
for i in order:
    if i.amount>high_amount:
        high_amount=i.amount
    if i.amount>10000:    
        count_above10000+=1
    amount_sum+=i.amount
print("\nHighest Value Order:")      
for i in order :
    if i.amount==high_amount:
        print(i.order_id,i.customer_name,i.product_name,i.amount)
        
print("\nTotal Sales:")        
print(amount_sum)

print("\nOrders Above ₹10,000:")
print(count_above10000)
