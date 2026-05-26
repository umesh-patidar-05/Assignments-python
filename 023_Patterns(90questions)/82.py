'''
   *
  *_*
 *___*
*_____*
 *___*
  *_*
   *
'''




n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i,-1):
        print(" ",end="")
    for k in range(1,2*i):
        if k==1 or k==2*i-1:
            print("*",end="")
        else:
            print("_",end="")
for l in range(n,1,-1):
    print()
    for m in range(l,n-1+2):
        print(" ",end="")
    for o in range(1,2*(l-1)):
        if o==1 or o==2*(l-1)-1:
            print("*",end="")
        else:
            print("_",end="")
