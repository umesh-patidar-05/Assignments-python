'''
3.

Handling Driving License Registration Exceptions

Write a program to approve or display suitable exceptions whenever a person tries to register for a driving license.
Create a class named Main with the following attributes
1. name - String
2. userAge - int
3. mark - int
Minimum eligibility for obtaining a driving license:
1. Age should be above 18 years old.
2. A person should pass the road rules eligibility test (with above 80 marks) for a total mark of 100.
Create two exceptions InvalidAgeForDrivingLicenseException and InvalidMarkForDrivingLicenseException to handle the above scenarios.
Input format :
The first line consists of a name a String.
The second line consists of age as an integer.
The next line consists of marks obtained as integers.
Output format :
The output should display "Approved" if he meets the criteria or the appropriate exception.
Refer to the sample output for reference.
Sample test cases :
Input 1 :
Guru
33
95
Output 1 :
Approved
Input 2 :
Smith
2
95
Output 2 :
InvalidAgeForDrivingLicenseException: Age should be more than 18 years old
Input 3 :
Jack
-3
95
Output 3 :
InvalidAgeForDrivingLicenseException: Invalid age
Input 4 :
Scott
33
75
Output 4 :
InvalidMarkForDrivingLicenseException: Mark should be more than 80
Input 5 :
Mathew
33
-45
Output 5 :
InvalidMarkForDrivingLicenseException: Invalid mark
Input 6 :
Guru
33
195
Output 6 :
InvalidMarkForDrivingLicenseException: Invalid mark
'''







class InvalidAgeForDrivingLicenseException(Exception):
    pass

class InvalidMarkForDrivingLicenseException(Exception):
    pass

class Main:
    def __init__(self, name, age, mark):
        self.name = name
        self.age = age
        self.mark = mark

name = input("Enter name: ")
age = int(input("Enter age: "))
mark = int(input("Enter mark: "))

try:
    obj = Main(name, age, mark)

    if obj.age <= 0:
        raise InvalidAgeForDrivingLicenseException("Invalid age")

    if obj.age < 18:
        raise InvalidAgeForDrivingLicenseException("Age should be more than 18 years old")
    
    if obj.mark < 0 or obj.mark > 100:
        raise InvalidMarkForDrivingLicenseException("Invalid mark")
    
    if obj.mark <=80:
        raise InvalidMarkForDrivingLicenseException("Mark should be more than 80")
    print("Approved")

except InvalidAgeForDrivingLicenseException as e:
    print("InvalidAgeForDrivingLicenseException:", e)

except InvalidMarkForDrivingLicenseException as e:
    print("InvalidMarkForDrivingLicenseException:", e)