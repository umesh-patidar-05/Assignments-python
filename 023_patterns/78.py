'''
   1
  12
 123
1234
 123
  12
   1
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for s1 in range(n,i,-1):
        print(" ",end="")
    for j in range(1,i+1):
        print(j,end="")
for k in range(n-1,0,-1):
        print()
        for s2 in range(1,n-k+1):
            print(" ",end="")
        for l in range(1,k+1):
            print(l,end="")