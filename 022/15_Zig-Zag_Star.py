'''
Zig-Zag Star
    *   *   *
      *   *
    *   *   *
'''	

n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n+1):
        if i%2!=0:
            
            print("* ",end=" ")
        
                
        else:
            if j%2!=0:
                print(" ",end=" ")
            else:
                print("*",end=" ")
