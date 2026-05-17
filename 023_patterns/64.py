'''
    *
   *_*
  *___*
 *_____*  
*********
'''




n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n-i):
        print(" ",end="")
    for k in range(1,2*i):
        if i!=n:
            if k==1 or k==2*i-1:
                print("*",end="")
            else:
                print("_",end="")
        else:
            print("*",end="")