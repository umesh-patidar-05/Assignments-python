'''
    1
   212
  32123
 4321234
543212345
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i,-1):
        print(" ",end="")
    for k in range(i,0,-1):
        print(k,end="")
    for l in range(2,i+1):
        print(l,end="")