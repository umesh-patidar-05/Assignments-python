'''
    1
   1 1
  1 2 1
 1 3 3 1
1 4 6 4 1
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i,-1):
        print(".",end="")
    for k in range(1,i+1):
        if k==1 or k==i:
            print("1",end=" ")
        elif k==i-1:
            print(k,end=" ")
        elif k==2:
            print(k,end=" ")
        else:
            print(k,end=" ")