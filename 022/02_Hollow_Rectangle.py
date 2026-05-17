'''
2) Hollow Rectangle
    * * * * * * * * *
    *               *
    *               *
    *               *
    * * * * * * * * *
'''	


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,2*n):
        if i==1 or i==n:
            print("*",end=" ")
        else:
            if j==1 or j==2*n-1:
                print("*",end=" ")
            else:
                print(" ",end=" ")