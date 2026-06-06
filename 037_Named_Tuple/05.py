'''
=====================================================================
QUESTION 5: LIBRARY BOOK RECORDS
================================

A library maintains book information using NamedTuple.

Fields:
book_id, title, author, price

Requirements:

1. Read N book records from the user and store them in a list of NamedTuples.
 
---

2. Display all book details.

---

3. Find and display the most expensive book.

---

4. Search books by author name.

---

5. Calculate and display the average price of all books.

---

Test Case:

Input:
Enter number of books: 4

B101 Python Basics John 450
B102 Java Programming James 550
B103 Data Science  700
B104 SQL Guide Smith 300

Enter Author Name: John

Expected Output:
Most Expensive Book:
B103 Data Science John 700

Average Book Price:
500.0

Books Written By John:
B101 Python Basics John 450
B103 Data Science John 700
'''





from collections import namedtuple
n=int(input("Enter number of books: "))
book=namedtuple("book",["book_id", "title", "author", "price"])
books=[]
for i in range(n):
    print(f"\nEnter book {i+1} details: ")
    idd=input("Enter id: ")
    titl=input("Enter title: ")
    auth=input("Enter author name: ")
    pric=int(input("Enter price: "))
    books.append(book(idd,titl,auth,pric))
#print(books)    

print("\nBooks detais are: ")
for i in books:
    print(i.book_id,i.book_id,i.author,i.price)

find_aut=input("\nEnter Author Name: ")
price_sum=0
high_p=0
for i in books:
    if i.price>high_p:
        high_p=i.price
    price_sum+=i.price    

print("\nMost Expensive Book:")
for i in books:
    if i.price==high_p:
        print(i.book_id,i.title,i.author,i.price)


print(f"\nBooks Written By {find_aut}:")
for i in books:
    if i.author==find_aut:
        print(i.book_id,i.title,i.author,i.price)

print("\nAverage Book Price:")
avg=price_sum/n
print(round(avg,2))

