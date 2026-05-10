'''
University Result Processing System
A university wants to automatically assign grades based on marks.
Marks ≥90 → A+
Marks ≥75 → A
Marks ≥60 → B
Marks ≥50 → C
Below 50 → Fail
Write a program using a single nested inline if expression to display the grade.
'''





marks=int(input("enter marks: "))
grade= "A+" if marks>=90 else "A" if marks>=75 else "B" if marks>=60 else "C" if marks>=50 else "fail"
print("Grade =",grade)


