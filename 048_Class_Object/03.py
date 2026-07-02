'''
Question 3: Online Shopping System
Scenario

An e-commerce company wants to calculate the final amount payable by customers after applying discounts.

Requirements

Create a class named Product with:

product_id
product_name
quantity
price_per_item

Initialize the values using a constructor.

Calculations
Total Amount = Quantity × Price Per Item
If Total Amount > ₹5000, Discount = 10%
Otherwise, Discount = 5%
Final Amount = Total Amount − Discount
Sample Input
Enter Product ID : P101
Enter Product Name : Laptop
Enter Quantity : 2
Enter Price Per Item : 35000
Sample Output
------ Shopping Bill ------
Product ID        : P101
Product Name      : Laptop
Quantity          : 2
Price Per Item    : 35000.0
Total Amount      : ₹70000.0
Discount          : ₹7000.0
Final Amount      : ₹63000.0
'''




class Product:
    def __init__(self,product_id,product_name,quantity,price_per_item):
        self.product_id = product_id
        self.product_name = product_name
        self.quantity = quantity
        self.price_per_item = price_per_item

    def Calculations(self):
        self.total_amount = self.quantity * self.price_per_item
        
        if self.total_amount > 5000:
            self.discount = round(self.total_amount * 0.1, 2)
            self.final_amount = self.total_amount - self.discount
        else:
            self.discount = round(self.total_amount * 0.05, 2)
            self.final_amount = self.total_amount - self.discount

    def result(self):
        print("------ Shopping Bill ------")
        print("Product ID        :",self.product_id)
        print("Product Name      :",self.product_name)
        print("Quantity          :",self.quantity)
        print("Price Per Item    :",self.price_per_item)
        print("Total Amount      :",self.total_amount)
        print("Discount          :",self.discount)
        print("Final Amount      :",self.final_amount)

idd = input("Enter Product ID : ")
name = input("Enter Product Name : ")
quantity = int(input("Enter Quantity : "))
price_per = int(input("Enter Price Per Item : "))
print()
p1=Product(idd,name,quantity,price_per)
p1.Calculations()
p1.result()