'''
123456789
 1+++++7
  1+++5
   1+3
    1
'''




n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(1,n-i+1):
        print(" ",end="")
    for k in range(1,2*i):
        if i==n:
            print(k,end="")
        else:
            if k==1 or k==2*i-1:
                print(k,end="")
            else:
                print("+",end="")
