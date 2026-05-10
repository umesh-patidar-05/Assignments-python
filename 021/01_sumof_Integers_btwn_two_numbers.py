'''
write a program to find out the sum of all intgers between 100 and 200 which are divisible by 9
'''




x=int(input("Enter starting number: "))
y=int(input("Enter ending number: "))
s=0
while x<=y:
    if x%9==0:
        s=s+x
    x+=1
print("sum =",s)        
