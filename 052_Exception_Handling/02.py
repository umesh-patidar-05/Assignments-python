'''
2.

Validating Email Address and Handling Custom Exceptions

Write a program to validate an email address and display appropriate exceptions if any errors are encountered.
Create 3 custom exception classes as below
1. DotException
2. AtTheRateException
3. DomainException
A typical email address should include a '.' character, '@' character, and a valid domain name. Valid domain names for practice include 'in', 'com', 'net', or 'biz'.
Input format :
The first line of input contains the email to be validated.
Output format :
Print 'Valid email address' if the email address provided meets the criteria, or 'Invalid email address' along with the appropriate exception message. Display 'Invalid Dot usage', 'Invalid @ usage', or 'Invalid Domain' messages based on the email ID provided.
Refer to the sample output for reference.
Sample test cases :
Input 1 :
sample@gmail.com
Output 1 :
Valid email address
Input 2 :
sample@gmail.com.
Output 2 :
DotException: Invalid Dot usage
Invalid email address
Input 3 :
sample@g@mail.com
Output 3 :
AtTheRateException: Invalid @ usage
Invalid email address
Input 4 :
sample@gmail.con
Output 4 :
DomainException: Invalid Domain
Invalid email address
'''





class DotException(Exception):
    pass

class AtTheRateException(Exception):
    pass

class DomainException(Exception):
    pass


def validate(email):
    if email.count("@") != 1:
        raise AtTheRateException("Invalid @ usage")

    if "." not in email or email.endswith("."):
        raise DotException("Invalid Dot usage")

    domain = ['in', 'com', 'net', 'biz']
    dom = email[email.index(".")+1 :]

    if dom not in domain:
        raise DomainException("Invalid Domain")

email = input("Enter email: ")

try:
    validate(email)
    print("valid email address")

except AtTheRateException as e:
    print("AtTheRateException:", e)
    print("invalid email address")    

except DotException as e:
    print("DotException:",e)    
    print("invalid email address")    

except DomainException as e:
    print("DomainException:", e)    
    print("invalid email address")    



# Enter email: sample@gmail.com
# valid email address    


# Enter email: sample@gmail.com.
# DotException: Invalid Dot usage
# invalid email address


# Enter email: sample@g@mail.com
# AtTheRateException: Invalid @ usage
# invalid email address


# Enter email: sample@gmail.con
# DomainException: Invalid Domain
# invalid email address