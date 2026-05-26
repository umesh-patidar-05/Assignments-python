'''
12345
 1__4
  1_3
   12
    1
'''





n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(i,n):
        print(" ",end="")
    for k in range(1,i+1):
        if i==n:
            print(k,end="")
        else:
            if k==1 or k==i:
                print(k,end="")
            else:
                print("_",end="")