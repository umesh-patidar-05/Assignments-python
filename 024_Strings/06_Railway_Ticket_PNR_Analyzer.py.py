'''
Railway Ticket PNR Analyzer

A railway department wants to verify whether a PNR number is valid.

Conditions:
- PNR must start with "PNR"
- Total length should be 12 characters
- Remaining characters should be digits

Input:
Enter PNR: PNR123456789

Output:
Valid PNR Number
'''

number=input("Enter number: ").upper()
if len(number)>=8:
    if number[:3]=="PNR":
        if number[3:].isdigit():
            print("Valid PNR number")
        else:
           print("invalid PNR number")
    else:
        print("invalid PNR number")       
else:
    print("invalid PNR number")
