'''
Number Sandglass
    123454321
     1234321
      12321
       121
        1
       121
      12321
     1234321
    123454321
'''
	
'''
43 minutes take for solve
''' 

n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(i,n+1):
        print(" ",end="")
    for k in range(1,i+1):
        print(k,end="")
        
    for m in range(i-1,0,-1):
        print(m,end="")

for a in range(1,n):
    print()
    for b in range(n,a,-1):
        print(" ",end="")
    for c in range(1,a+2):
        print(c,end="")
        
    for d in range(a,0,-1):
        print(d,end="")



  