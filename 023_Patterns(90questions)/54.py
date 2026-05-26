'''
ABCDE
 A__D
  A_C
   AB
    A
'''



n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    ch=65
    for j in range(i,n):
        print(" ",end="")
    for k in range(1,i+1):
        if i==n:
            print(chr(ch),end="")
        else:
            if k==1 or k==i:
                print(chr(ch),end="")
            else:
                print("_",end="")
        ch+=1        