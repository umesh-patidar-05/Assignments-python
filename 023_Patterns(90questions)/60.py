'''
    X
   X X
  X___X
 X_____X
X X X X X
'''

 



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n-i+1):
        print(" ",end="")
    for k in range(1,i+1):
        if i<3 or i==n:
            print("X",end=" ")
        else:
            if k==1:
                print("X",end="_")
            elif k==i:    
                print("X",end="")
            else:
                print("_",end="_")
                