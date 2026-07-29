'''
QNo 4:
1. Bank Account Management
Objective: Create a program to manage bank accounts and handle exceptions for insufficient balance and negative deposit amounts.

Details:
Create a BankAccount class with fields for accountNumber, accountHolder, and balance.
Define two custom exceptions:
InsufficientBalanceException for withdrawal amounts exceeding the balance.
NegativeDepositException for deposits with negative amounts.
Include methods for deposit(double amount) and withdraw(double amount) that throw the respective exceptions.
In the main method, demonstrate various cases like successful transactions, insufficient balance, and invalid deposits.
'''








class InsufficientBalanceException(Exception):
    pass

class NegativeDepositException(Exception):
    pass

class BankAcount:
    def __init__(self, actnumber, acholder, balance):
        self.actnumber = actnumber
        self.acholder = acholder
        self.balance = balance

    def deposit(self, amount):
        if amount<0:
            raise NegativeDepositException("deposit amount can not be negative")
        self.balance = self.balance + amount
        print("deposite successful") 
        print("current balance", self.balance) 

    def withdraw(self, amount):
        if amount>self.balance:
            raise InsufficientBalanceException("insufficient balance")
        self.balance = self.balance - amount
        print("withdraw successful")
        print("current balance", self.balance) 

actnumber = int(input("Enter account number "))
actholder = input("Enter account holder name ") 
balance = float(input("Enter balance "))

acc = BankAcount(actnumber, actholder, balance)

try:
    amount = float(input("Enter deposit amount "))
    acc.deposit(amount)

except NegativeDepositException as e:
    print("negative", e)

try:
    amount = float(input("Enter withdraw amount "))
    acc.withdraw(amount)

except InsufficientBalanceException as e:
    print("insufficient", e)



# 1
# Enter account number 101
# Enter account holder name umesh
# Enter balance 1000
# Enter deposit amount 200
# deposite successful
# current balance 1200.0
# Enter withdraw amount 500
# withdraw successful
# current balance 700.0
    
# 2
# Enter account number 101
# Enter account holder name umesh
# Enter balance 1000
# Enter deposit amount -500
# negative deposit amount can not be negative
# Enter withdraw amount 200
# withdraw successful
# current balance 800.0

# 3
# Enter account number 101
# Enter account holder name umesh
# Enter balance 1000
# Enter deposit amount 300
# deposite successful
# current balance 1300.0
# Enter withdraw amount 1500
# insufficient insufficient balance

# 4
# Enter account number 101
# Enter account holder name umesh
# Enter balance 1000
# Enter deposit amount -500
# negative deposit amount can not be negative
# Enter withdraw amount 1500
# insufficient insufficient balance