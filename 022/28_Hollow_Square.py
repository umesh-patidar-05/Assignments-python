'''
Hollow Square
    *****
    *   *
    *   *
    *   *
    *****
'''	



n=int(input("Entet n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n+1):
        if i==1 or i==n:
            print("*",end=" ")
     
        else:
            if j==1: 
                print("*",end=" ")
            elif j==n:
                print("*",end=" ")
            else:
                print(" ",end=" ")