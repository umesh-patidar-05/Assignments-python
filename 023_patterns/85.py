'''
*         *
**       **
***     ***
****   ****
***** *****
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        print("*",end="")
    for k in range(n-i,-1,-1):
        print(" ",end="")
    for l in range(n-i,0,-1):
        print(" ",end="")
    for m in range(1,i+1):
        print("*",end="")        







'''
*        *
**      **
***    ***
****  ****
**********
'''


'''
n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        print("*",end="")
    for k in range(n-i,0,-1):
        print(" ",end="")
    for l in range(n-i,0,-1):
        print(" ",end="")
    for m in range(1,i+1):
        print("*",end="")
'''        