'''
    1
   11
  1*1
 1**1
11111
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i,-1):
        print(" ",end="")
    for k in range(1,i+1):
        if k>1 and k<i and i!=n:
            print("*",end="")
        else:
            print(1,end="")