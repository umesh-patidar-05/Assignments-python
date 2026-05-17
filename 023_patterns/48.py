'''
    A 
   AB
  A_C
 A__D
ABCDE
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    ch=65
    for j in range(n,i,-1):
        print(" ",end="")
    for k in range(1,i+1):
        if k>1 and k<i and i!=n:
            print("_",end="")
        else:
            print(chr(ch),end="")
        ch+=1        