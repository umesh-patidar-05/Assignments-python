'''
NOTE: using tuple only
An electronics store wants to maintain product information. Since product details should not be modified accidentally,
 each product record is stored as a tuple.

Tuple Format:

(product_id, product_name, price)

Requirements:

Read N product details from the user and store them as tuples in a list.
Display all product details.
Find and display the costliest product.
Find and display the cheapest product.
Calculate and display the average price of all products.
Display all products whose price is greater than ₹50,000. 

Test Case:

Input:

Enter number of products: 4

P101 Laptop 65000
P102 Mobile 25000
P103 Television 80000
P104 Tablet 30000

Expected Output:

All Products:
('P101', 'Laptop', 65000)
('P102', 'Mobile', 25000)
('P103', 'Television', 80000)
('P104', 'Tablet', 30000)

Costliest Product:
('P103', 'Television', 80000)

Cheapest Product:
('P102', 'Mobile', 25000)

Average Price:
50000.0

Products Above ₹50,000:
('P101', 'Laptop', 65000)
('P103', 'Television', 80000)

'''



n=int(input("Enter number of products: "))
products=[]
for i in range(n):
    print(f"\nEnter product {i+1} details:")
    idd=input("Enter id: ")
    name=input("Enter name: ")
    price=int(input("Enter price: "))
    products.append((idd,name,price))
#print(products)    

print("\nAll Products:")
for i in products:
    print(i)
    
costliest=products[0]
cheapest=products[0]
summ=0
for i in range(n):
    if products[i][2]>costliest[2]:
        costliest=products[i]
    if products[i][2]<cheapest[2]:
        cheapest=products[i]  

    summ+=products[i][2]
    
print("\nCostliest Product: ")
print(costliest)

print("\ncheapest product: ")
print(cheapest)

print("\nAverage Price:")
avg=summ/n
print(round(avg,2))

print("\nProducts Above ₹50,000:")
for i in products:
    if i[2]>50000:
        print(i)
