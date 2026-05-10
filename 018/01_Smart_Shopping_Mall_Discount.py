'''
Smart Shopping Mall Discount System
A shopping mall offers discounts based on customer type and purchase amount.
If the customer is premium, they get 20% discount when the amount is more than 5000, otherwise 10%.
If the customer is regular, they get 10% discount when the amount is more than 3000, otherwise 5%.
Write a program to calculate the final payable amount using inline if only.
'''



a=int(input("Enter Amount "))
type=input("Customer Type(premium/regular) ").lower()
final = a-a*20//100 if type=="premium" and a>5000 else a-a*10//100 if type=="premium" else a-a*10//100 if type=="regular" and a>3000 else a-a*5//100
print("final =",final)





'''
if type=="premium":
    if a>5000:
        final=a-a*20//100
        print(final)
    else:
        final=a-a*10//100
        print(final)
else:
    if a>3000:
        final=a-a*10//100
        print(final)
    else:
        final=a-a*5//100
        print(final)        
''' 