'''
 Reverse Number Triangle
    - - - -
    2 - - -
    4 3 - -
    6 5 4 -
    8 7 6 5
'''	


n=int(input("Enter n: "))
for i in range(1,n):
    for m in range(1,n):
        if i==1:
            print("-",end=" ")    
    print()        
    for j in range(2*i,i,-1):
        print(j,end=" ")
    for k in range(1,n-i):
        print("-",end=" ")