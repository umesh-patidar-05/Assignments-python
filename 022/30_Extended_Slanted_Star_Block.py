'''Extended Slanted Star Block
    ****
     ****
      ****
       ****
        ****
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        print(" ",end=" ")
    for k in range(1,n):
        print("*",end=" ")