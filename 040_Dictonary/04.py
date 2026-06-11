'''
=========================================
STUDENT GRADE ANALYSIS
======================

Store student marks in a dictionary.

students = {
"Ajay":78,
"Ravi":92,
"Neha":85,
"Aman":65
}

Write a program to:

* Find the student with highest marks.
* Find the student with lowest marks.

Sample Output:
Highest Marks : Ravi 92
Lowest Marks : Aman 65
'''


students = {
"Ajay":78,
"Ravi":92,
"Neha":85,
"Aman":65
}
highest="Ajay"
lowest="Ajay"
for  k,v in students.items():
    if v>students[highest]:
        highest=k
    elif v<students[lowest]:
        lowest=k
print("Highest Marks :",highest,students[highest])
print("Lowest Marks :",lowest,students[lowest])
