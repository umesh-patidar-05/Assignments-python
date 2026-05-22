'''
Enterprise Password Pattern Strength Analyzer

A cybersecurity company wants to validate advanced passwords.

## Conditions:

* Minimum 10 characters
* At least:

  * 1 uppercase letter
  * 1 lowercase letter
  * 1 digit
  * 1 special character
* No consecutive repeating characters
* No spaces allowed

### Input:

text
Pyth@n1234


### Output:

text
Strong Password


### Input:

text
Paaass@12


### Output:

text
Weak Password
'''


password=input("Enter password ")
upper=0
lower=0
digit=0
special=0
space=0
found=0 
if len(password)>=10:
    for ch in password:
        if ch.isupper():
            upper=1
        elif ch.islower():
            lower=1
        elif ch.isdigit():
            digit=1
        elif ch==" ":
             space=1
        else:
            special=1
    
    pre=password[0]
    i=1
    while i<len(password):
        if password[i]!=pre:
            pre=password[i]
            found=0   
        else:
            found=1
            break
        i+=1  
    

    if upper==1 and lower==1 and digit==1 and special==1 and space==0 and found==0:
        print("Strong Password")
    else:
        print("weak password")
        
else:
    print("weak password")