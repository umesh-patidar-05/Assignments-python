'''
***** *****
****   ****
***     ***
**       **
*         *
'''


n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(1,i+1):
        print("*",end="")
    for k in range(0,n-i+1):
        print(" ",end="")
    for l in range(1,n-i+1):
        print(" ",end="")
    for m in range(1,i+1):
        print("*",end="")






'''
**********
****  ****
***    ***
**      **
*        *
'''


'''
n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(1,i+1):
        print("*",end="")
    for k in range(1,n-i+1):
        print(" ",end="")
    for l in range(1,n-i+1):
        print(" ",end="")
    for m in range(1,i+1):
        print("*",end="")
'''

