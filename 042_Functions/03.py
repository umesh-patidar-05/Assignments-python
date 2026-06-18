'''
ONLINE SHOPPING SYSTEM

Scenario:

An e-commerce company wants to develop an Online Shopping System. The application should be menu-driven and should demonstrate different types of arguments used in Python functions.

MENU

1. Customer Registration
2. Product Information
3. Generate Invoice
4. Add Multiple Products
5. Display Customer Profile
6. Exit

Requirements

Choice 1 – Customer Registration

* Accept Customer Name, Email, and Mobile Number.
* Pass the values to a function using Positional Arguments.
* Display the registered customer details.

Choice 2 – Product Information

* Accept Product Name, Price, and Category.
* Call the function using Keyword Arguments.
* Display the product details.

Choice 3 – Generate Invoice

* Accept Product Name and Price.
* Tax Percentage should have a default value.
* Use Default Arguments while generating the invoice.
* Display the final amount.

Choice 4 – Add Multiple Products

* Allow the user to enter any number of product prices.
* Pass all prices to a function using Variable Length Arguments (*args).
* Calculate and display the total bill amount.

Choice 5 – Display Customer Profile

* Accept any number of customer details such as Name, City, Email, Mobile, Membership Type, etc.
* Pass the details using Arbitrary Keyword Arguments (**kwargs).
* Display all customer information.

Choice 6 – Exit

Sample Execution

Enter Choice : 1

Enter Name : Ajay
Enter Email : [ajay@gmail.com](mailto:ajay@gmail.com)
Enter Mobile : 9876543210

Customer Registered Successfully

---

Enter Choice : 2

Enter Product Name : Laptop
Enter Price : 55000
Enter Category : Electronics

Product Details Displayed Successfully

---

Enter Choice : 3

Enter Product Name : Laptop
Enter Price : 55000

Invoice Generated Successfully

---

Enter Choice : 4

Enter Number of Products : 4

Enter Price 1 : 100
Enter Price 2 : 200
Enter Price 3 : 300
Enter Price 4 : 400

Total Bill Amount : 1000

---

Enter Choice : 5

Customer Profile Displayed Successfully

---

Enter Choice : 6

Thank You. Program Terminated.

Important Instructions

1. Choice 1 must use Positional Arguments.
2. Choice 2 must use Keyword Arguments.
3. Choice 3 must use Default Arguments.
4. Choice 4 must use Variable Length Arguments (*args).
5. Choice 5 must use Arbitrary Keyword Arguments (**kwargs).
6. Use separate functions for each menu option.
7. Implement the solution using a menu-driven approach.
8. Maintain proper code readability and formatting.

Note:
Marks will be awarded based on the correct usage of the specified argument type in each menu option.
'''


def customer(namee,emaill,mobilee):
    print("Name =",namee)
    print("Email =",emaill)
    print("Mobile =",mobilee)

def product(name,price,category):
    print("Product Name :",name)
    print("Price :",price)
    print("Category :",category)

def invoice(name,price,tax=18):
    print("\nProduct Name :",name)
    print("Price :",price)
    print("Tax : ",tax)
    amount=price + (price*tax/100)
    print("Final Amount :",amount)

def n_products(*l):
    print("\nTotal Bill Amount :",sum(l))   


def profile(**kwargs):
    print()
    for  k,v in kwargs.items():
        print(k,":",v)
    

print("""\nMENU
1. Customer Registration
2. Product Information
3. Generate Invoice
4. Add Multiple Products
5. Display Customer Profile
6. Exit""")
while True:
    choice=int(input("\nEnter choice: "))
    match choice:
        case 1:
            name=input("\nEnter Name : ")
            email=input("Enter Email : ")
            mobile=input("Enter Mobile : ")
            print("\nCustomer Registered Successfully")      
            print("\ncustomer details are:")
            customer(name,email,mobile)

        case 2:
            p_name=input("\nEnter Product Name : ")
            p_price=int(input("Enter Price : "))
            p_categ=input("Enter Category : ")
            print("\nProduct Details are: ")
            product(name=p_name, price=p_price, category=p_categ)

        case 3:    
            p_namee=input("\nEnter Product Name : ")
            p_pricee=int(input("Enter Price : "))
            invoice(p_namee, p_pricee)

        case 4:
            n=int(input("\nEnter Number of Products : "))
            p=[]
            for i in range(n):
                p.append(int(input(f"Enter Price {i+1} : ")))  
           
            n_products(*p)

        case 5:
            namee=input("\nEnter name : ")
            cityy=input("Enter city : ")
            maill=input("Enter Email : ")
            mobilee=int(input("Enter mobile : "))
            typee=input("Enter Membership Type : ")
            profile(Name=namee, City=cityy, Mail=maill, Mobile=mobilee, Membership=typee)

        case 6:
            print("\nThank You. Program Terminated.")
            break

        case _:
            print("\nInvalid choice: ")        