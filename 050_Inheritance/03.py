'''
ASSIGNMENT 3: 

Online Shopping System (Hierarchical Inheritance)
Scenario
An e-commerce company sells multiple categories of products.
Create a base class Product.
Common Details
Product ID
Product Name
Price
Derived Classes
Electronics
Brand
Warranty
Clothing
Size
Fabric Type
Grocery
Expiry Date
Weight
Functional Requirements
========== Online Shopping ==========
1. Add Electronics Product
2. Add Clothing Product
3. Add Grocery Product
4. Display Electronics
5. Display Clothing
6. Display Grocery
7. Exit
Sample Input
Choice : 1

Product ID : 501
Product Name : Laptop
Price : 65000

Brand : Dell
Warranty : 2 Years
Sample Output
Electronics Product

Product ID : 501
Product Name : Laptop
Brand : Dell
Warranty : 2 Years
Price : ₹65000
'''







class Product:
    def __init__(self):
        self.product_id = int(input("Product ID : "))
        self.product_name = input("Product Name : ")
        self.price = int(input("Price : "))
        print()

class Electronics(Product):
    def details(self, brand, warranty):
        self.brand = brand
        self.warranty = warranty

    def displayelectronics(self):
        print("Electronics Product\n")    
        print("Product ID :", self.product_id)
        print("Product Name :", self.product_name)
        print("Brand :", self.brand)
        print("Warranty :", self.warranty)
        print(f"Price : ₹{self.price}")


class Clothing(Product):

    def details(self, size, fabric_type):
        self.size = size
        self.fabric_type = fabric_type

    def displayclothing(self):
        print("Clothing Product\n")    
        print("Product ID :", self.product_id)
        print("Product Name :", self.product_name)
        print("Size :", self.size)
        print("Fabric Type :", self.fabric_type)
        print(f"Price : ₹{self.price}")    


class Grocery(Product):

    def details(self, expiry_date, weight):
        self.expiry_date = expiry_date
        self.weight = weight

    def displaygrocery(self):
        print("Grocery Product\n")    
        print("Product ID :", self.product_id)
        print("Product Name :", self.product_name)
        print("Expiry Date :", self.expiry_date)
        print("Weight:", self.weight)
        print(f"Price : ₹{self.price}")  


while True:
    print("""\n========== Online Shopping ==========
1. Add Electronics Product
2. Add Clothing Product
3. Add Grocery Product
4. Display Electronics
5. Display Clothing
6. Display Grocery
7. Exit\n""")        
    
    choice = int(input("Enter choice: "))
    print()
    match choice:
        case 1:
            e = Electronics()
            brand = input("Brand : ")
            warranty = input("Warranty : ")
            e.details(brand, warranty)

        case 2:
            c = Clothing()
            size = input("Size : ")
            fabric_type = input("Fabric Type : ")
            c.details(size, fabric_type)

        case 3:
            g = Grocery()
            expiry_date = input("Expiry Date : ")
            weight = int(input("Weight : "))
            g.details(expiry_date, weight)    

        case 4:
            e.displayelectronics()

        case 5:
            c.displayclothing()

        case 6:
            g.displaygrocery()

        case 7:
            print("Thank youuu.....") 
            break

        case _:
            print("invalid choicee....")               