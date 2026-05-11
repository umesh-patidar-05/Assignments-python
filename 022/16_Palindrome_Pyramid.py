'''
Palindrome Pyramid
            1
           121
          12321
         1234321
        123454321
'''



n=int(input("Enter n: "))
for a in range(1,n):
    print()
    for b in range(n,a,-1):
        print(" ",end="")
    for c in range(1,a+2):
        print(c,end="")
        
    for d in range(a,0,-1):
        print(d,end="")