'''
=========================================================
        MATRIX OPERATIONS MANAGEMENT SYSTEM
=========================================================


A data analysis company stores numerical information in matrix form.
To help employees perform matrix-related operations efficiently,
the company wants a menu-driven application.

The application should allow the user to:

1. Add Two Matrices
2. Subtract Two Matrices
3. Compare Two Matrices
4. Exit

The user must enter the number of rows, columns, and all matrix
elements. The program should perform the selected operation and
display the result.

---------------------------------------------------------
Requirements
---------------------------------------------------------

1. Display the following menu repeatedly until the user chooses Exit.

   1. Add Two Matrices
   2. Subtract Two Matrices
   3. Compare Two Matrices
   4. Exit

2. Read the number of rows and columns from the user.

3. Read all elements of Matrix A and Matrix B from the user whenever
   required.

4. Based on the user's choice:

   Choice 1 - Add Two Matrices
   --------------------------------
   Add corresponding elements of both matrices and display
   the resultant matrix.

5. Choice 2 - Subtract Two Matrices
   --------------------------------
   Subtract corresponding elements of Matrix B from Matrix A
   and display the resultant matrix.

6. Choice 3 - Compare Two Matrices
   --------------------------------
   Check whether both matrices are equal.

   Two matrices are considered equal if:
   - They have the same dimensions.
   - Corresponding elements are equal.

   Display:
   "Matrices are Equal"
   or
   "Matrices are Not Equal"

7. Choice 4 - Exit
   --------------------------------
   Display:
   "Thank You for Using Matrix Operations Management System"

---------------------------------------------------------
Sample Input/Output
---------------------------------------------------------

Menu
1. Add Two Matrices
2. Subtract Two Matrices
3. Compare Two Matrices
4. Exit

Enter your choice: 1

Enter number of rows: 2
Enter number of columns: 2

Enter Matrix A:
1 2
3 4

Enter Matrix B:
5 6
7 8

Result Matrix:
6 8
10 12

---------------------------------------------------------

Menu
1. Add Two Matrices
2. Subtract Two Matrices
3. Compare Two Matrices
4. Exit

Enter your choice: 3

Enter number of rows: 2
Enter number of columns: 2

Enter Matrix A:
1 2
3 4

Enter Matrix B:
1 2
3 4

Output:
Matrices are Equal

---------------------------------------------------------

Menu
1. Add Two Matrices
2. Subtract Two Matrices
3. Compare Two Matrices
4. Exit

Enter your choice: 4

Output:
Thank You for Using Matrix Operations Management System

=========================================================
'''



while True:
    print("\nMenu\n1. Add Two Matrices\n2. Subtract Two Matrices\n3. Compare Two Matrices\n4. Exit")
    
    choice=int(input("Enter your choice: "))
    match choice:
        case 1:
            #1. Add Two Matrices
            rows=int(input("Enter number of rows: "))
            cols=int(input("Enter number of columns: "))
            print("\nEnter Matrix A")
            matrixA=[]
            for i in range(rows):
                row=[]
                for j in range(cols):
                    row.append(int(input()))
                matrixA.append(row)
            #print(matrixA)    
            
            print("\nEnter Matrix B")
            matrixB=[]
            for i in range(rows):
                row=[]
                for j in range(cols):
                    row.append(int(input()))
                matrixB.append(row)
            #print(matrixB)
            
            print("\nMatrix A: ")
            for i in matrixA:
                for j in i:
                    print(j,end=" ")
                print()    
                  
            print("\nMatrix B: ")
            for i in matrixB:
                for j in i:
                    print(j,end=" ")
                print()    
                  
            res=[]
            for i in range(rows):
                row=[]
                for j in range(cols):
                    row.append(matrixA[i][j]+matrixB[i][j])
                res.append(row)    
                    
            print("\nResult Matrix: ")
            for i in res:
                for j in i:
                    print(j,end=" ")
                print()    
                                        
        
        case 2:

            #2. Subtract Two Matrices
            rows=int(input("Enter number of rows: "))
            cols=int(input("Enter number of columns: "))
            
            print("\nEnter Matrix A")
            matrixA=[]
            for i in range(rows):
                row=[]
                for j in range(cols):
                    row.append(int(input()))
                matrixA.append(row)
            #print(matrixA)    
            
            print("\nEnter Matrix B")
            matrixB=[]
            for i in range(rows):
                row=[]
                for j in range(cols):
                    row.append(int(input()))
                matrixB.append(row)
            #print(matrixB)
            
            print("\nMatrix A: ")
            for i in matrixA:
                for j in i:
                    print(j,end=" ")
                print()    
                  
            print("\nMatrix B: ")
            for i in matrixB:
                for j in i:
                    print(j,end=" ")
                print()    
            
            
            res=[]
            for i in range(rows):
                row=[]
                for j in range(cols):
                    row.append(matrixB[i][j]-matrixA[j][j])
                res.append(row)    
                    
            print("\nResult Matrix: ")
            for i in res:
                for j in i:
                    print(j,end=" ")
                print()    
                            

        case 3:
            rows=int(input("Enter number of rows: "))
            cols=int(input("Enter number of columns: "))
            print("\nEnter Matrix A")
            matrixA=[]
            for i in range(rows):
                row=[]
                for j in range(cols):
                    row.append(int(input()))
                matrixA.append(row)
            #print(matrixA)    
            
            print("\nEnter Matrix B")
            matrixB=[]
            for i in range(rows):
                row=[]
                for j in range(cols):
                    row.append(int(input()))
                matrixB.append(row)
            #print(matrixB)
            
            print("\nMatrix A: ")
            for i in matrixA:
                for j in i:
                    print(j,end=" ")
                print()    
                  
            print("\nMatrix B: ")
            for i in matrixB:
                for j in i:
                    print(j,end=" ")
                print()    
                  
            equal=1
            for i in range(rows):
                for j in range(cols):
                    if matrixA[i][j]!=matrixB[i][j]:
                        equal=0
                        break
            
                if equal==0:
                    break
                 
            if equal==1:
                print("\nMatrices are Equal")
            else:
                print("\nMatrices are Not Equal")            
            
        case 4:
            print("\nThank You for Using Matrix Operations Management System")
            break
        case _:
            print("\ninvalid choice")
