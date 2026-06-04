'''
MATRIX PERFORMANCE EVALUATION SYSTEM

A company records the monthly performance scores of employees in a matrix format. Each row represents an employee and each column represents a month.

The HR department wants a menu-driven application to analyze employee performance.

Menu
1. Find Employee with Highest Total Score
2. Find Month with Lowest Average Score
3. Display Employee-wise Maximum Score
4. Exit
Requirements
Choice 1 – Find Employee with Highest Total Score
Calculate the sum of each row.
Display the employee number having the highest total score.
Choice 2 – Find Month with Lowest Average Score
Calculate the average of each column.
Display the month having the lowest average score.
Choice 3 – Display Employee-wise Maximum Score
Find and display the maximum value present in each row.
Sample Input
10 20 30
40 50 60
25 35 45
Output
Employee 2 has Highest Total Score = 150

Month 1 Average = 25
Month 2 Average = 35
Month 3 Average = 45

Employee 1 Max Score = 30
Employee 2 Max Score = 60
Employee 3 Max Score = 45
'''


#rows=employees
#cols=months
rows=int(input("Enter number of employees: "))
cols=int(input("Enter number of months: "))
print("\nEnter Matrix ")
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
    print("\nMenu\n1. Find Employee with Highest Total Score\n2. Find Month with Lowest Average Score\n3. Display Employee-wise Maximum Score\n4. Exit")    
    
    choice=int(input("Enter your choice: "))
    match choice:
        case 1:
            #1. Find Employee with Highest Total Score
            high=0
            emp=0
            for i in range(rows):
                sum=0
                for j in range(cols):
                    sum+=matrix[i][j]
                if sum>high:
                    high=sum
                    emp=i+1
            print(f"\nEmployee {emp} has Highest Total Score = {high}")        
        
        case 2:
            #2. Find Month with Lowest Average Score
            for  i in range(cols):
                sum=0
                for j in range(rows):
                    sum+=matrix[j][i]
                avg=sum//rows
                print(f"Month {i+1} Average = {avg}")
        
        case 3:
            #3. Display Employee-wise Maximum Score
            for i in range(rows):
                max=0
                for j in range(cols):
                    if matrix[i][j]>max:
                        max=matrix[i][j]
                print(f"Employee {i+1} Max Score = {max}")        
            
        case 4:
            #exit
            print("\nThank You for Using MATRIX PERFORMANCE EVALUATION SYSTEM")
            break
        case _:
            print("\ninvalid choice")