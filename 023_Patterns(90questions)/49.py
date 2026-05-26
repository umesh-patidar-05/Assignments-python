'''
    1
   10
  101
 1010
10101
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i,-1):
        print(" ",end="")
    for k in range(1,i+1):
        if k%2==0:
            print("0",end="")
        else:
            print("1",end="")