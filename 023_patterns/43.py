'''
    1
   12
  123
 1234
12345
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i,-1):
        print(" ",end="")
    for k in range(1,i+1):
        print(k,end="")