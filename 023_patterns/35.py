'''
*****
*  *
* *
**
*
'''


n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(i,0,-1):
        if i==n:
            print("*",end="")
        else:
            if j==1:
                print("*",end="")
            elif j==i:
                print("*",end="")
            
            else:
                print(" ",end="")