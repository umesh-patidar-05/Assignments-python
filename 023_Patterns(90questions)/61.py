'''
    *
   ***
  *****
 *******
*********
'''



# correct approach
n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n-i+1):
        print(" ",end="")
    for k in range(1,2*i):
        print("*",end="")




# another approach
'''
n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n-i+1):
        print(" ",end="")
    for k in range(1,i+1):
        if i<2:
            print("*",end="")
        elif i==n:
            print("*",end="*")
        else:
            if k==1:
                print("*",end="*")
            elif k==i:    
                print("*",end="")
            else:
                print("*",end="*")
'''           


