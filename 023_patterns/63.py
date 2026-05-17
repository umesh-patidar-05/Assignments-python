'''
    A
   ABC
  ABCDE
 ABCDEFG
ABCDEFGHI
'''




n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    ch=65
    for j in range(1,n-i+1):
        print("",end=" ")
    for k in range(1,2*i):
        print(chr(ch),end="")
        ch+=1