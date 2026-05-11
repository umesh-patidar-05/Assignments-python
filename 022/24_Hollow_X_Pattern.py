'''
Hollow X Pattern
    *   *
     * *
      *
     * *
    *   *
'''	


'''
n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n+1):
        if i==j:
            print("*",end="")
       
        else:
            print(" ",end="")
'''

'''
n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for k in range(n,0,-1):
        if i==k:
            print("*",end="")
       
        else:
            print(" ",end="")
'''       



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n+1):
        if i==j:
            print("*",end="")
        else:
            print(" ",end="")    
       
    for k in range(n,0,-1):
        if i==k:
            print("*",end="")
     
        else: 
            print(" ",end="")
            