'''
Assignment 2: Mobile EMI Calculation

You purchased a mobile phone using EMI. After paying a down payment, the remaining amount includes interest and is divided into monthly installments.

Input:
Mobile price = 30000
Down payment = 5000
Interest rate = 10%
Months = 10

Expected Output:
Remaining Amount = 25000
Total with Interest = 27500
Monthly EMI = 2750.0
'''


price = int(input("Mobile price = "))
down = int(input("Down Payment = "))
rate = int(input("Interest rate = "))
month = int(input("Months = "))
remain = price - down
year = month/12
interest = (remain * rate * year)/100
total = remain + interest
monthly = total/12
print("Remaining Amount =  ",remain)
print("Total with Interest = ",round(total,3))
print("Monthly EMI = ",round(monthly,3))
