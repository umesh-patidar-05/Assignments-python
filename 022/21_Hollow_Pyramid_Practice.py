'''
21) Hollow Pyramid (Practice)
            *
           * *
          *   *
         *     *
        *********
'''		


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i-1,-1):
        print(" ",end="")
    for k in range(i,n+1):
        if k%2!=0:
            if k==i:
                print("*",end="")
            elif k==n:
                print("*",end="")
            else:
               print(" ",end="")