'''
*           * 
  *       *   
    *   *     
	  *       
	*   *
  *		  *
*		    *
'''




n=int(input("Enter n: "))
for i in range(1,n):
    print()
    for s in range(1,i):
        print(" ",end="")
    for j in range(1,i+1):
        if j==i:
            print("*",end="")
        else:
            print(" ",end="")
    for k in range(n-i,-1,-1):
        print(" ",end="")
    for l in range(n-i+1,-1,-1):
        if l==i:
            print("*",end="")
        else:    
            print(" ",end="")
   
