'''
=========================================================
         MATRIX QUALITY CHECK SYSTEM
=========================================================

Scenario

A manufacturing company records quality inspection values in
matrix form. The Quality Control team wants a menu-driven
application to analyze the inspection data and generate reports.

The application should allow the user to:

1. Count Armstrong Numbers Row-wise
2. Count Palindrome Numbers Column-wise
3. Display Average of Each Row
4. Exit

---------------------------------------------------------
Requirements
---------------------------------------------------------

1. Display the following menu repeatedly until the user selects Exit.

   1. Count Armstrong Numbers Row-wise
   2. Count Palindrome Numbers Column-wise
   3. Display Average of Each Row
   4. Exit

2. Read the number of rows and columns from the user.

3. Read all matrix elements from the user.

4. Based on the user's choice:

   Choice 1 - Count Armstrong Numbers Row-wise
   -------------------------------------------
   Count and display the number of Armstrong numbers
   present in each row.

   Examples:
   153, 370, 371, 407

5. Choice 2 - Count Palindrome Numbers Column-wise
   -----------------------------------------------
   Count and display the number of palindrome numbers
   present in each column.

   Examples:
   121, 131, 444, 1221

6. Choice 3 - Display Average of Each Row
   --------------------------------------
   Calculate and display the average of each row.

7. Choice 4 - Exit
   --------------------------------------
   Display:
   "Thank You for Using Matrix Quality Check System"

---------------------------------------------------------
Sample Input/Output
---------------------------------------------------------

Menu
1. Count Armstrong Numbers Row-wise
2. Count Palindrome Numbers Column-wise
3. Display Average of Each Row
4. Exit

Enter your choice: 1

Enter rows: 3
Enter columns: 3

Enter matrix elements:
153 121 10
370 22 44
407 15 131

Output:
Row 1 Armstrong Count = 1
Row 2 Armstrong Count = 1
Row 3 Armstrong Count = 1

---------------------------------------------------------

Enter your choice: 2

Output:
Column 1 Palindrome Count = 0
Column 2 Palindrome Count = 3
Column 3 Palindrome Count = 2

=========================================================
'''




rows=int(input("Enter number of rows: "))
cols=int(input("Enter number of columns: "))

print("\nEnter Matrix: ")
matrix=[]
for i in range(rows):
    row=[]
    for j in range(cols):
        row.append(int(input()))
    matrix.append(row)
#print(matrix)    

print("\nMatrix: ")
for i in matrix:
    for j in i:
        print(j,end=" ")
    print() 


while True:
    print("\nMenu\n1. Count Armstrong Numbers Row-wise\n2. Count Palindrome Numbers Column-wise\n3. Display Average of Each Row\n4. Exit")
    choice=int(input("Enter your choice: "))
    match choice:
        
        case 1:
            #1. Count Armstrong Numbers Row-wise
            for i in range(rows):
                count=0
                for j in range(cols):
                    n=matrix[i][j]
                    num=n
                    p=len(str(n))
                    arm=0
                    while n>0:
                        rem=n%10     
                        arm+=rem**p
                        n=n//10
                    if arm==num:
                        count+=1
                print(f"Row {i+1} Armstrong Count = {count}")        

        case 2:
            #2. Count Palindrome Numbers Column-wise
            for i in range(cols):
                count=0
                for j in range(rows):
                    n=matrix[j][i]
                    num=n
                    rev=0
                    while n>0:
                        rem=n%10
                        rev=rev*10+rem
                        n=n//10
                    if rev==num:
                        count+=1
                print(f"Column {i+1} Palindrome Count = {count}")
            
        case 3:
            #3. Display Average of Each Row
            for i in range(rows):
                sum=0
                l=len(matrix[i])
                avg=0
                for j in range(cols):
                    sum=sum+matrix[i][j]
                avg=sum//l
                print(f"row {i+1} Average = {avg}")    
            
        case 4:
            print("\nThank You for Using Matrix Quality Check System")
            break
            
        case _:
            print("\nInvalid choice")
