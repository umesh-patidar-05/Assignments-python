'''
* 
* * 
*   * 
*     *
* * * * *
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    if i!=n:
        for j in range(1,i+1):
            if j==1:
                print("*",end="")
            else:
                print("  ",end="")
        for k in range(1,i):
            if k==1:
                print("*",end="")
    else:
        for l in range(1,i+1):
            print("*",end=" ")