'''
Plus Star Pattern
          *
          *
      *********
          *
          *
'''		 



n=int(input("Enter n: "))
for i in range(1,n):
    print()
    for j in range(1,n):
        print(" ",end="")
    for k in range(1,n+1):    
        if k==i:
            print("*",end="")

print()            
for l in range(1,n*2):
    print("*",end="") 

for p in range(n-1,0,-1):
    print()
    for q in range(1,n):
        print(" ",end="")
    for r in range(1,n):
        if r==p:
            print("*",end="")