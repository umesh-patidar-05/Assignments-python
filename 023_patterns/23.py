'''
a
bc
d f
g  j
klmno
'''


n=int(input("Enter n: "))
ch=97
for i in range(1,n+1):
    print()
    if i!=n:
        for j in range(1,i+1):
            if j==1:
                print(chr(ch),end="")
                ch+=1
            elif j>2:
                print("",end=" ")
                ch+=1    
        for k in range(1,i):
            if k==1:
                print(chr(ch),end="")
                ch+=1
    else:
        for m in range(1,i+1):
            print(chr(ch),end="")
            ch+=1