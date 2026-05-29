'''
 Student Grade Classification System (Python List Assignment)


A school stores student marks in a list. The system must analyze the marks and generate a *clear performance report* 
by grouping students into grade categories.



Write a Python program to:

* Iterate through the list of marks
* Assign grades based on marks:

  * *>= 90 → A*
  * *>= 75 and < 90 → B*
  * *>= 50 and < 75 → C*
  * *< 50 → Fail*
* Store each category in separate lists
* Count students in each category
* Display a *final structured report (important)*

---

## 📌 Output Format (Mandatory)

Your output must be displayed exactly in this format:


===== STUDENT GRADE REPORT =====

A Grade Students   : [list]
B Grade Students   : [list]
C Grade Students   : [list]
Fail Students      : [list]

--------------------------------
A Count   : X
B Count   : X
C Count   : X
Fail Count: X
--------------------------------

Total Students: X


---

 Input

[95, 82, 67, 45, 30]

Output


===== STUDENT GRADE REPORT =====

A Grade Students   : [95]
B Grade Students   : [82]
C Grade Students   : [67]
Fail Students      : [45, 30]

--------------------------------
A Count   : 1
B Count   : 1
C Count   : 1
Fail Count: 2
--------------------------------

Total Students: 5

'''

 
n=int(input("Enter total students: "))
marks=[]
for i in range(n):
    marks.append(int(input(f"Enter student{i+1} marks: ")))
print(marks)    

Agrade=[]
Bgrade=[]
Cgrade=[]
fail=[]
Acount=0
Bcount=0
Ccount=0
fcount=0
for i in marks:
    if i>=90:
        Agrade.append(i)
        Acount+=1
    elif i>=75:
        Bgrade.append(i)
        Bcount+=1
    elif i>=50:
        Cgrade.append(i)
        Ccount+=1        
    else:
        fail.append(i)
        fcount+=1     
        
        
        
        

print("===== STUDENT GRADE REPORT =====")

print("A Grade Students   : ",Agrade)
print("B Grade Students   : ",Bgrade)
print("C Grade Students   : ",Cgrade)
print("Fail students      : ",fail)

print("--------------------------------")

print("A Count   : ",Acount)
print("B Count   : ",Bcount)
print("C Count   : ",Ccount)
print("Fail Count: ",fcount)

print("--------------------------------")

print("Total Students: ",n)