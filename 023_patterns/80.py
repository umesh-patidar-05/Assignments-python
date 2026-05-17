'''
   *
  *_*
 *_*_*
*_*_*_*
 *_*_*
  *_*
   *
'''

n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i,-1):
        print(" ",end="")
    for k in range(1,2*i):
        if k%2==0:
            print("_",end="")
        else:
            print("*",end="")
for l in range(n,1,-1):
    print()
    for m in range(l,n-1+2):
        print(" ",end="")
    for o in range(1,2*(l-1)):
        if o%2==0:
            print("_",end="")
        else:
            print("*",end="")





'''
for l in range(1,n+1):
    print()
    for m in range(1,l+1):
        print(" ",end="")
    for n in range(1,2*(n-l)):
        if n%2==0:
            print("_",end="")
        else:
            print("*",end="")
'''