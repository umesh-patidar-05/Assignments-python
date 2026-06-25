'''
4.
Assignment: Scholarship Eligibility System (Using filter(), map(), and sorted() with Lambda Expressions)

A university is offering scholarships to students based on their academic performance.

The scholarship committee has decided on the following rules:

Only students who score 75 marks or above are eligible for the scholarship.
Eligible students will receive 5 bonus marks to reward their outstanding performance.
Finally, the updated marks should be displayed in descending order.

As a software developer, your task is to automate this process using Python.

Note: Use filter() to select eligible students, map() to add the bonus marks, and sorted() to display the final marks in descending order. All three operations must use lambda expressions.

Task

Write a Python program that:

Filters students who have scored 75 or above.
Adds 5 bonus marks to each eligible student.
Sorts the updated marks in descending order.
Displays the final list of scholarship marks.
Input Format
The first line contains an integer N, representing the number of students.
The second line contains N space-separated marks.
Output Format

Display the updated scholarship marks in descending order.

Sample Input
Enter the number of students:
8

Enter the marks:
65 80 92 74 88 76 55 95
Sample Output
Scholarship Marks:
100 97 93 85 81
'''





n=int(input("Enter the number of students: "))
print("Enter the marks: ")
marks=list(map(int,input().split()))
fil=list(filter(lambda x:x>=75, marks))
result=list(map(lambda m:m+5, fil))
final=sorted(result, reverse=True)
print("Scholarship Marks:")
for i in final:
    print(i,end=" ")