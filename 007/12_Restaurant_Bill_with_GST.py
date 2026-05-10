'''
Restaurant Bill with GST System

A restaurant applies GST based on the total bill amount:

* Up to ₹1000 → 5% GST
* ₹1001 to ₹5000 → 12% GST
* Above ₹5000 → 18% GST
  Additionally, if the bill exceeds ₹3000, a service charge of ₹200 is added.

Write a Python program to calculate the final bill.

Input:
Enter bill amount: 4000

Output:
Final Bill Amount: ₹4680
'''



bill = int(input("Enter bill amount: "))
if bill<=1000:
    print("Final Bill Amount: ₹",(bill + (bill*5)//100))
else:
    if bill<=3000:
        print("Final Bill Amount: ₹",(bill + (bill*12)//100))    
    else:
        if bill<=5000:
            print("Final Bill Amount: ₹",(bill + 200 + (bill*12)//100)) 
        else:
            print("Final Bill Amount: ₹",( bill +200 + (bill*18)//100))

