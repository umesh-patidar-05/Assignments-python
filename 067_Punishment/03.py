'''
=========================================================
ASSIGNMENT 3: PRODUCT INVENTORY MANAGEMENT SYSTEM
=========================================================

SCENARIO
--------
A retail shop wants to manage product details, prices,
categories, and available stock using Python PDBC.

CONCEPTS TO PRACTICE
--------------------
1. INSERT
2. SELECT
3. UPDATE
4. DELETE
5. LIKE operator
6. Parameterized queries
7. commit()
8. fetchall()
9. Menu-driven programming


TABLE STRUCTURE
===============

Table Name: product_pdbc

Column       Data Type
--------------------------------
pid          INT PRIMARY KEY
pname        VARCHAR(60)
category     VARCHAR(40)
price        DECIMAL(10,2)
quantity     INT


SAMPLE DATA
===========

pid   pname       category       price       quantity
------------------------------------------------------------
301   Laptop      Electronics    55000.00    10
302   Mouse       Electronics      800.00    50
303   Keyboard    Electronics     1500.00    30
304   Notebook    Stationery       100.00   100
305   Pen         Stationery        20.00   200


MENU
====

===== PRODUCT INVENTORY SYSTEM =====
1. Add Product
2. Display All Products
3. Search Product by Name
4. Update Product Price
5. Delete Product
6. Exit

Enter your choice:


TASK 1: ADD PRODUCT
===================

INPUT
-----
Enter your choice: 1
Enter Product ID: 306
Enter Product Name: Monitor
Enter Category: Electronics
Enter Price: 12000
Enter Quantity: 15

OUTPUT
------
Product inserted successfully.


TASK 2: DISPLAY ALL PRODUCTS
============================

INPUT
-----
Enter your choice: 2

OUTPUT
------
ID    Product       Category       Price       Quantity
------------------------------------------------------------
301   Laptop        Electronics     55000.00    10
302   Mouse         Electronics       800.00    50
303   Keyboard      Electronics      1500.00    30
304   Notebook      Stationery        100.00   100
305   Pen           Stationery         20.00   200
306   Monitor       Electronics     12000.00    15


TASK 3: SEARCH PRODUCT BY NAME USING LIKE
=========================================

INPUT
-----
Enter your choice: 3
Enter product name to search: o

OUTPUT
------
Matching products:

ID    Product       Category       Price       Quantity
------------------------------------------------------------
301   Laptop        Electronics     55000.00    10
302   Mouse         Electronics       800.00    50
304   Notebook      Stationery        100.00   100
306   Monitor       Electronics     12000.00    15

NOTE
----
Use:
WHERE pname LIKE %s

Pass:
'%' + search_name + '%'


TASK 4: UPDATE PRODUCT PRICE
============================

INPUT
-----
Enter your choice: 4
Enter Product ID: 302
Enter New Price: 900

OUTPUT
------
Product price updated successfully.


TASK 5: DELETE PRODUCT
======================

INPUT
-----
Enter your choice: 5
Enter Product ID: 305

OUTPUT
------
Product deleted successfully.


TASK 6: EXIT
============

INPUT
-----
Enter your choice: 6

OUTPUT
------
Thank you for using Product Inventory System.


add these scenarios also:--

1. Display all products from Electronics category.
2. Display all products from Stationery category.
3. Search products whose names contain 'oo'.
4. Search products whose names start with 'M'.
5. Search products whose names end with 'e'.
6. Display products whose price is greater than 1000.
7. Display products whose quantity is less than 20.
8. Update product quantity.
9. Update product category.
10. Delete a product by ID.
11. Display products whose category contains 'tron'.
12. Search products by a user-provided price range.



SUGGESTED SUCCESS MESSAGES
==========================

INSERT:
Record inserted successfully.

SELECT:
Records displayed successfully.

UPDATE:
Record updated successfully.

DELETE:
Record deleted successfully.

NOT FOUND:
No record found for the given ID.

INVALID CHOICE:
Invalid choice. Please try again.

EXIT:
Thank you for using the system.
'''    














import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="punishment")
    
cursor = conn.cursor()

while True:

    print()
    print("""===== PRODUCT INVENTORY SYSTEM =====
1. Add Product
2. Display All Products
3. Search Product by Name
4. Update Product Price
5. Delete Product
6. Exit""")
    print()
    choice = int(input("Enter your choice: "))
    print()

    match choice:
        case 1:

            idd = int(input("Enter Product ID: "))           
            name = input("Enter Profuct Name: ")
            category = input("Enter Category: ")
            price = float(input("Enter Price: "))
            quantity = int(input("Enter Quantity: "))

            query = "INSERT INTO product_pdbc VALUES(%s, %s, %s, %s, %s)"
            cursor.execute(query,(idd, name, category, price, quantity))
            conn.commit()
            print()
            print("Product inserted successfully.")


        case 2:

            while True:
                print("1. Display all products")
                print("2. Display all Electronics prducts")
                print("3. Display all Stationary prducts")
                print("4. Display products whose price is greater than 1000.")
                print("5. Display products whose quantity is less than 20.")
                print("6. Display products whose category contains 'tron'.")
                print("7. MAIN MENU")
                print()
                option = int(input("Enter your choice for Display: "))

                match option:

                    case 1:
                        query = "SELECT * FROM product_pdbc"
                        cursor.execute(query)
                        rows = cursor.fetchall()

                        print("-----------------------------------------------------------------")
                        print("ID       Product         Category       Price          Quantity")
                        print("------------------------------------------------------------------")
                        for row in rows:
                            print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")

                        print("Records displayed successfully.")    

                    case 2:
                        query = "SELECT * FROM product_pdbc WHERE category = 'Electronics'"
                        cursor.execute(query)
                        rows = cursor.fetchall()
                    
                        print("-----------------------------------------------------------------")
                        print("ID       Product         Category       Price          Quantity")
                        print("------------------------------------------------------------------")
                        for row in rows:
                            print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")
                        print("Records displayed successfully.") 
                        
                    case 3:
                        query = "SELECT * FROM product_pdbc WHERE category = 'Stationery'"
                        cursor.execute(query)
                        rows = cursor.fetchall()
                    
                        print("-----------------------------------------------------------------")
                        print("ID       Product         Category       Price          Quantity")
                        print("------------------------------------------------------------------")
                        for row in rows:
                            print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")
                        print("Records displayed successfully.")    

                    case 4:
                        query = "SELECT * FROM product_pdbc WHERE price > 1000"
                        cursor.execute(query)
                        rows = cursor.fetchall()

                        print("-----------------------------------------------------------------")
                        print("ID       Product         Category       Price          Quantity")
                        print("------------------------------------------------------------------")
                        for row in rows:
                            print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")
                        print("Records displayed successfully.")
                        
                    case 5:
                        query = "SELECT * FROM product_pdbc WHERE quantity < 20"
                        cursor.execute(query)
                        rows = cursor.fetchall()
                    
                        print("-----------------------------------------------------------------")
                        print("ID       Product         Category       Price          Quantity")
                        print("------------------------------------------------------------------")
                        for row in rows:
                            print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")
                        print("Records displayed successfully.")

                    case 6:
                        query = "SELECT * FROM product_pdbc WHERE category LIKE '%tron%'"
                        cursor.execute(query)
                        rows = cursor.fetchall()
                    
                        print("-----------------------------------------------------------------")
                        print("ID       Product         Category       Price          Quantity")
                        print("------------------------------------------------------------------")
                        for row in rows:
                            print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")
                        print("Records displayed successfully.")

                    case 7:
                        break

                    case _:
                        print("invalid choice")

        case 3:

           while True:
               print("1. Search Product by Name")
               print("2. Search products whose names contain 'oo'.")
               print("3. Search products whose names start with 'M'.")
               print("4. Search products whose names end with 'e'.")
               print("5. Search products by price range.")
               print("6. MAIN MENU")
               print()

               option = int(input("Enter your choice for Search: "))

               match option:

                    case 1:

                        name = input("Enter product name to search: ")
                        query = "SELECT * FROM product_pdbc WHERE pname LIKE %s"

                        cursor.execute(query, ("%"+name+"%",))
                        rows = cursor.fetchall()
                        if rows != []:

                            print("-----------------------------------------------------------------")
                            print("ID       Product         Category       Price          Quantity")
                            print("------------------------------------------------------------------")
                            for row in rows:
                                print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")

                            print("Records displayed successfully.")

                        else:
                           print("No record found for the given Name.")    
                           
                    case 2:

                        query = "SELECT * FROM product_pdbc WHERE pname LIKE %s"

                        cursor.execute(query, ("%"+"oo"+"%",))
                        rows = cursor.fetchall()
                        if rows != []:

                            print("-----------------------------------------------------------------")
                            print("ID       Product         Category       Price          Quantity")
                            print("------------------------------------------------------------------")
                            for row in rows:
                                print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")

                            print("Records displayed successfully.")

                        else:
                           print("No record found for the given Name.")          

                    case 3:
                                              
                        query = "SELECT * FROM product_pdbc WHERE pname LIKE %s"

                        cursor.execute(query, ("M"+"%",))
                        rows = cursor.fetchall()
                        if rows != []:

                            print("-----------------------------------------------------------------")
                            print("ID       Product         Category       Price          Quantity")
                            print("------------------------------------------------------------------")
                            for row in rows:
                                print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")

                            print("Records displayed successfully.")

                        else:
                           print("No record found for the given Name.")    

                    case 4:
                                              
                        query = "SELECT * FROM product_pdbc WHERE pname LIKE %s"

                        cursor.execute(query, ("%"+"e",))
                        rows = cursor.fetchall()
                        if rows != []:

                            print("-----------------------------------------------------------------")
                            print("ID       Product         Category       Price          Quantity")
                            print("------------------------------------------------------------------")
                            for row in rows:
                                print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")

                            print("Records displayed successfully.")

                        else:
                           print("No record found for the given Name.")    

                    case 5:
                        print("Enter price range:")
                        p_from = float(input("Enter price range FROM: "))
                        p_to = float(input("Enter price range TO: "))
                        query = "SELECT * FROM product_pdbc WHERE price BETWEEN %s AND %s"

                        cursor.execute(query, (p_from, p_to))
                        rows = cursor.fetchall()
                        if rows != []:

                            print("-----------------------------------------------------------------")
                            print("ID       Product         Category       Price          Quantity")
                            print("------------------------------------------------------------------")
                            for row in rows:
                                print(f"{row[0]}       {row[1]}         {row[2]}       {row[3]}          {row[4]}")

                            print("Records displayed successfully.")

                        else:
                           print("No record found for the given Price range.")    

                    case 6:
                       break

                    case _:
                       print("Invalid choice. Please try again.")

        case 4:

            while True:
                print("1. Update Product Price using Product ID: ")
                print("2. Update product quantity using Product ID: ")
                print("3. Update product category using Product ID: ")
                print("4. MAIN MENU")
                print()

                option = int(input("Enter your choice for Search: "))

                match option:

                    case 1:

                        p_id = int(input("Enter product ID for update: "))
                        new_price = float(input("Enter new price: "))

                        query = "UPDATE product_pdbc SET price = %s WHERE pid = %s"

                        cursor.execute(query, (new_price, p_id))
                        conn.commit()
                        print("Record updated successfully.")

                    case 2:

                        p_id = int(input("Enter product ID for update: "))
                        new_quantity = int(input("Enter new quantity: "))

                        query = "UPDATE product_pdbc SET quantity = %s WHERE pid = %s"

                        cursor.execute(query, (new_quantity, p_id))
                        conn.commit()
                        print("Record updated successfully.")

                    case 3:

                        p_id = int(input("Enter product ID for update: "))
                        new_category = input("Enter new Category: ")

                        query = "UPDATE product_pdbc SET category = %s WHERE pid = %s"

                        cursor.execute(query, (new_category, p_id))
                        conn.commit()
                        print("Record updated successfully.")

                    case 4:
                        break    

                    case _:
                       print("Invalid choice. Please try again.")                    

        case 5:

            p_id = input("Enter product ID for delete: ")

            query = "DELETE FROM product_pdbc WHERE pid = %s"
            cursor.execute(query, (p_id,))
            conn.commit()
            print("Record deleted successfully.")


        case 6:
            print("Thank you for using Product Inventory System.")
            break

        case _:
            print("Invalid choice. Please try again.")