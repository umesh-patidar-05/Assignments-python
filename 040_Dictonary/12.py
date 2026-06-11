'''
=========================================
ONLINE FOOD DELIVERY ANALYSIS
=============================

orders = [
"Pizza",
"Burger",
"Pizza",
"Pasta",
"Burger",
"Pizza",
"Pasta"
]

Write a program to:

* Count orders of each food item.
* Find the most ordered item.

Sample Output:
Pizza : 3
Burger : 2
Pasta : 2

Most Ordered : Pizza
'''



orders = [
"Pizza",
"Burger",
"Pizza",
"Pasta",
"Burger",
"Pizza",
"Pasta"
]

dic={}
for food in orders:
    dic[food]=dic.get(food,0)+1
#print(dic)
most="Pizza"
for k,v in dic.items():
    print(k,":",v)    
    if v>dic[most]:
        most=k

print("\nMost Ordered :",most)        