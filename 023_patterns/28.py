'''
1
123
12345
1234567
123456789
'''



n=int(input("Enter n: "))
for i in range(1,n+1,2):
    print()
    for j in range(1,i+1):
        print(j,end="")