'''
Inverted Hollow Pyramid
    *********
     *     *
      *   *
       * *
        *
'''		



n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(1,n-i+1):
        print(" ",end="")
    for k in range(1,2*i):
        if i==n:
            print("*",end="")
        else:
            if k==1 or k==2*i-1:
                print("*",end="")
            else:
                print(" ",end="")