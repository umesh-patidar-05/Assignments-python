'''
 Hollow Diamond Square
***** *****
****   ****
***     ***
**       **
*         *
*         *
**       **
***     ***
****   ****
***** *****    
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
for a in range(1,n+1):
    print()
    for b in range(1,a+1):
        print("*",end="")
    for c in range(n-a,-1,-1):
        print(" ",end="")
    for d in range(n-a,0,-1):
        print(" ",end="")
    for e in range(1,a+1):
        print("*",end="")             