'''
=========================================================
            MATRIX ANALYSIS SYSTEM
=========================================================


A research laboratory stores experimental data in matrix form.
Scientists want a program that can analyze the matrix and provide
different statistics through a menu-driven application.

The application should allow the user to:

1. Count Prime Numbers Row-wise
2. Count Perfect Numbers Column-wise
3. Display Row-wise Sum
4. Exit

---------------------------------------------------------
Requirements
---------------------------------------------------------

1. Display the following menu repeatedly until the user selects Exit.

   1. Count Prime Numbers Row-wise
   2. Count Perfect Numbers Column-wise
   3. Display Row-wise Sum
   4. Exit

2. Read the number of rows and columns from the user.

3. Read all matrix elements from the user.

4. Based on the user's choice:

   Choice 1 - Count Prime Numbers Row-wise
   ---------------------------------------
   Count and display the number of prime numbers present
   in each row of the matrix.

5. Choice 2 - Count Perfect Numbers Column-wise
   --------------------------------------------
   Count and display the number of perfect numbers present
   in each column of the matrix.

   Note:
   A perfect number is a number that is equal to the sum
   of its proper divisors.

   Examples:
   6  = 1 + 2 + 3
   28 = 1 + 2 + 4 + 7 + 14

6. Choice 3 - Display Row-wise Sum
   --------------------------------
   Calculate and display the sum of each row.

7. Choice 4 - Exit
   --------------------------------
   Display:
   "Thank You for Using Matrix Analysis System"

---------------------------------------------------------
Sample Input/Output
---------------------------------------------------------

Menu
1. Count Prime Numbers Row-wise
2. Count Perfect Numbers Column-wise
3. Display Row-wise Sum
4. Exit

Enter your choice: 1

Enter rows: 3
Enter columns: 3

Enter matrix elements:
2 4 5
6 7 8
11 28 13

Output:
Row 1 Prime Count = 2
Row 2 Prime Count = 1
Row 3 Prime Count = 2

---------------------------------------------------------

Menu
1. Count Prime Numbers Row-wise
2. Count Perfect Numbers Column-wise
3. Display Row-wise Sum
4. Exit

Enter your choice: 2

Output:
Column 1 Perfect Number Count = 1
Column 2 Perfect Number Count = 1
Column 3 Perfect Number Count = 0

---------------------------------------------------------

Menu
1. Count Prime Numbers Row-wise
2. Count Perfect Numbers Column-wise
3. Display Row-wise Sum
4. Exit

Enter your choice: 3

Output:
Row 1 Sum = 11
Row 2 Sum = 21
Row 3 Sum = 52

---------------------------------------------------------

Menu
1. Count Prime Numbers Row-wise
2. Count Perfect Numbers Column-wise
3. Display Row-wise Sum
4. Exit

Enter your choice: 4

Output:
Thank You for Using Matrix Analysis System

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
    print("\nMenu\n1. Count Prime Numbers Row-wise\n2. Count Perfect Numbers Column- wise\n3. Display Row-wise Sum\n4. Exit")

    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            #1. Count Prime Numbers Row-wise
            for i in range(rows):
                primecount=0
                for j in range(cols):
                    n=matrix[i][j]
                    found=1
                    if n<=1:
                        continue
                    
                    else:
                        for k in range(2,n//2+1):
                            if n%k==0:
                                found=0
                                break
                    if found==1:
                        primecount+=1        
                print(f"Row {i+1} Prime Count = {primecount}")


        case 2:

            #2. Count Perfect Numbers Column-wise
            
            for i in range(cols):
                perfectcount=0
                for j in range(rows):
                    found=1
                    n=matrix[j][i]
                    add=0
                    for k in range(1,n//2+1):
                        if n%k==0:
                            add=add+k
                    if add==n:
                        perfectcount+=1
                print(f"Column {i+1} Perfect Number Count = {perfectcount}")


        case 3:
            #3. Display Row-wise Sum
            for i in range(rows):
                rowsum=0
                for j in range(cols):
                    rowsum+=matrix[i][j]
                print(f"Row {i+1} Sum = {rowsum}")    
                


        case 4:
            #4 Exit
            print("\nThank You for Using Matrix Analysis System") 
            break
 
        case _:
            print("\nincorrect choice")
        
