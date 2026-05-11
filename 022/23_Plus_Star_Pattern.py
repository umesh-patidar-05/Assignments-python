'''
Plus Star Pattern
          *
          *
      *********
          *
          *
'''		 


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n+1):
        if j==n:
           print("*",end="")
        elif i//2==n//2:
            print("|",end="")
        
        else:
            print(" ",end="")