
''' 1. Hello & Name Printer
Write a program to print:
Hello
Your Name   '''

'''
name = input("Enter your name")
print("Hello \n",name)
'''

   



'''  2. Menu Display
Write a program to display:
=== Welcome to Coffee Shop ===
1. Espresso     $3
2. Latte        $4
3. Cappuccino   $5  '''

'''
print("WElcome to coffe shop") 
print("1. Espresso \t $3")  
print("2. Latte \t $4")
print("3. Cappuccino \t $5")                                
'''





'''
3. Resume Format
Write a program to display:
=== Resume ===
Name       : Alice Johnson
Email      : alice@example.com
Skills     :
  - Java
  - HTML & CSS
  - Problem Solving
Experience : 2 years at XYZ Ltd.
'''

'''
name, Email=input("Enter your name and e mail").split()
skills = input("Enter your skills")
Experience = input("Enter your Experience")
print("name \t :",name)
print("Email \t :", Email)
print("skills \t :", skills)
print("Experience \t :", Experience)
'''







'''
4. Star Pattern(without loop)
Write a program to print:
***
***
***
'''

'''
print("***")
print("***")
print("***")
'''






'''
5. Special Characters
Write a program to print:
@ # $ % ^ & *
'''

'''
print("@ # $ % ^ & *")
'''








'''
6. Print User Details
Take input:
- Name
- Age
- City
Display them properly.
'''

'''
name,Age,city = input("Enter your name , Age and city").split()
print("name =", name)
print("age =",Age)
print("city =",city)
'''





'''
7. Full Name Display
Take first name and last name as input and display:
Full Name: John Doe
'''

'''
first = input("Enter first name")
last = input("Enter last name")
print("Full name :",first, last)
'''






'''
8. Simple Input Display
Take two numbers as input and print them on separate lines.
'''

'''
num = input("Enter two numbers").split()
print(num[0])
print(num[1])
'''








'''
9. Three Inputs Display
Take three values from user and print each on new line.
'''

'''
a,b,c = input("Enter the values of a,b and c").split()
print("a =",a)
print("b =",b)
print("c =",c)
'''









'''
10. Input and Echo
Take input from user and print:
You entered: <input>
'''

'''
name = input("Enter your name")
print("you entered", name)
'''









'''
11. Greeting Message
Take name as input and print:
Hello <name>
Welcome to Python
'''

'''
name = input("Enter your name")
print("Hello", name)
print("Welcome to python")
'''







'''
12. Favorite Things
Take input:
- Favorite food
- Favorite color
Display:
I like <food> and my favorite color is <color>
'''

'''
food,color = input("Enter favourite food and color").split()
print(f"I like {food} and my favourite color is {color}")
'''









'''
13. College Details
Take input:
- College Name
- Course
- Year
Display in proper format.
'''

'''
college,course,year = input("Enter college name , course name and year").split()
print("colleg Name =", college)
print("course =",course)
print("year =", year)
'''











'''
14. Email Display
Take email as input and print:
Your email is: <email>
'''

'''
email = input("Enter your Email")
print("your Email is :", email)
'''







'''
15. Bio Data
Take input:
- Name
- Age
- Phone
Display:
--- Bio Data ---
Name  :
Age   :
Phone :
'''



name,age,phone = input("Enter name, age and phone no").split()
print("Name =",name)
print("Age =",age)
print("phone =",phone)

