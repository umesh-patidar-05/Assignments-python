'''
ASSIGNMENT 4:

Banking Loan Management System (Multilevel Inheritance)
Scenario
A bank wants software for loan management.
Class Hierarchy
Person
     ↓
Customer
     ↓
LoanAccount
Person
Name
Age
Mobile Number
Customer
Customer ID
Account Number
LoanAccount
Loan Amount
Interest Rate
Loan Tenure
Functional Requirements
Add Customer Loan Details
Display Loan Details
Exit
Sample Input
Customer Name : Ajay Singh
Age : 36
Mobile : 9999999999

Customer ID : C101
Account Number : 100245785

Loan Amount : 500000
Interest Rate : 8.5
Loan Tenure : 5
Sample Output
----------- Loan Details -----------

Customer Name : Ajay Singh
Customer ID : C101
Account Number : 100245785

Loan Amount : ₹500000
Interest Rate : 8.5%
Loan Tenure : 5 Years
'''






class Person:
    def __init__(self, person_name, person_age, person_mobile):
        self.person_name = person_name
        self.person_age = person_age
        self.person_mobile = person_mobile

class Customer(Person):
    def __init__(self,person_name, person_age, person_mobile, customer_id, account_number):
        super().__init__(person_name, person_age, person_mobile)
        self.customer_id = customer_id
        self.account_number = account_number


class LoanAccount(Customer):
    def __init__(self, person_name, person_age, person_mobile, customer_id, account_number, loan_amount, interest_rate, loan_tenure):
        super().__init__(person_name, person_age, person_mobile, customer_id, account_number)
        self.loan_amount = loan_amount
        self.interest_rate = interest_rate
        self.loan_tenure = loan_tenure

    def display(self):
        print("----------- Loan Details -----------\n")
        print("Customer Name : ", self.person_name)
        print("Customer Age : ", self.person_age)
        print("Mobile Number : ", self.person_mobile)
        print()
        print("Customer ID : ", self.customer_id)
        print("Account Number : ", self.account_number)
        print()
        print(f"Loan Amount : ₹{self.loan_amount}")
        print(f"Interest Rate : {self.interest_rate}%")
        print(f"Loan Tenure : {self.loan_tenure} Years")



name = input("Customer Name : ")     
age = int(input("Age : "))
mobile = input("Mobile : ")
idd = input("Customer ID : ")
acc_number = int(input("Account Number : "))
loan_amount = int(input("Loan Amount : "))
interest_rate = float(input("Interest Rate : "))
loan_tenre = int(input("Loan Tenure :"))

l = LoanAccount(name, age, mobile, idd, acc_number, loan_amount, interest_rate, loan_tenre)

l.display()