'''
Banking Fraud Detection System

A bank checks fraud risk based on transaction amount, location, device, and transaction count.

If amount is greater than or equal to 50000, then check location. If location is international, then check device. If device is new, then check transaction count. If transactions are more than 3, mark High Risk (Block); otherwise Medium Risk. If device is not new, mark Medium Risk.

If location is domestic, then check transaction count. If more than 5, mark Medium Risk; otherwise Low Risk.

If amount is less than 50000, then check unusual activity. If yes, then check device. If device is new, mark Medium Risk; otherwise Low Risk. If no unusual activity, mark Safe.

Input:
Amount = 70000 
Location = international
Device = new
Transactions = 4

Output:
Risk Level = High Risk (Blocked)
'''


amount = int(input("Amount = "))
location = input("Location(international/domestic) = ").lower()
device = input("Device(new) = ").lower()
count = int(input("Transactions count = "))
if amount>=50000:
    if location=="international":
        if device=="new":
            if count>3:
                print("Risk Level = High Risk (Blocked)")
            else:
                print("Risk Level = Medium Risk")
        else:
            print("Risk Level = Medium Risk")
    
    else: 
        if location=="domestic":
            if count>5:
                print("Risk Level = Medium Risk")
            else:
                print("Risk Level = Low risk")
else:
    print("Risk Level = Safe")