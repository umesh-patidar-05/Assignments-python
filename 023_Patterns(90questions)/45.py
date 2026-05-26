'''
    5
   44
  333
 2222
11111
'''



n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(1,i):
        print(" ",end="")
    for k in range(i,n+1):
        print(i,end="")