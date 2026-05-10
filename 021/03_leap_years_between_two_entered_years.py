'''
WAP to find out all the leap years between two entered years
'''


x=int(input("Enter starting year: "))
y=int(input("Enter ending year: "))
i=x
print("leap years :")
while i<=y:
    if i%100==0:
        if i%400==0:
            print(i)
    else:
        if i%4==0:
            print(i)
    i+=1        