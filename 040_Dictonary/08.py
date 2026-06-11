'''
=========================================
LIBRARY BOOK ISSUE TRACKER
==========================

A library records issued books.

books = [
"Python",
"Java",
"Python",
"C++",
"Java",
"Python"
]

Write a program to:

* Count how many times each book was issued.

Sample Output:
{
'Python':3,
'Java':2,
'C++':1
}
'''



books = [
"Python",
"Java",
"Python",
"C++",
"Java",
"Python"
]
dic={}
for b in books:
    dic[b]=dic.get(b,0)+1

#print(dic)    
for k,v in dic.items():
    print(k,v)