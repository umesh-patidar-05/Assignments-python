'''
X Star Pattern
    *   *
     * *
      *
     * *
    *   *
'''


n=int(input("Enter n: "))
for i in range(1,n):
    print()
    for j in range(1,i):
        print(" ",end="")
    for k in range(1,i+1):
        if k==1:
            print("*",end="")
    for l in range(1,n-i+1):
        print(" ",end="")
    for m in range(1,n-i):
        print(" ",end="")
    for o in range(1,i+1):
        if o==1:
            print("*")
print()
for a in range(1,n):
    print(" ",end="")
print("*",end="")    

for b in range(1,n):
    print()
    for c in range(n,b+1,-1):
        print(".",end="")
    for d in range(1,n+1):
        if d==1 or d==n:
            print("*",end="")
        else:
            print(".",end="")