'''
19) Reverse Number Cross
    5   5
     4 4
      3
     4 4
    5   5
'''	



n=int(input("Enter n: "))
for i in range(2*n,0,-1):
    print()
    for j in range(2*n-1,0,-1):
        if j==i or j==2*n-i:
            print(j,end="")
        else:
            print(" ",end="")
            
