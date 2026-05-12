'''
Hollow Diamond Numbers
       1
      2 2
     3   3
    4     4
     3   3
      2 2
       1
'''	   



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i-1,-1):
        print("-",end="")
    for k in range(1,i+1):
        if i==k:
            print(i,end="")
        elif i-k==1:    
            print(i*2,end="")
        else:
            print(".",end="")