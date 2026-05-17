'''
 Number-Star Palindrome
    12344321
    123**321
    12****21
    1******1
'''	

n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n-i+2):
        print(j,end="")
    for k in range(1,i):
        print("*",end="")
    for l in range(1,i):
        print("*",end="")
    for m in range(n-i+1,0,-1):
        print(m,end="")
