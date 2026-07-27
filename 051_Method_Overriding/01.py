'''
Assignment 1: 
Shape Area Calculation

Create a parent class Shape with a method calculateArea() that prints "Area calculation not defined for Shape."

Create subclasses:

Circle that overrides calculateArea() to calculate and print the area of a circle.

Rectangle that overrides calculateArea() to calculate and print the area of a rectangle.

Write a Main class to demonstrate polymorphism using an array of Shape objects.
'''





class Shape:
    def calculateArea(self):
        print("Area calculation not defined for Shape")

class Circle(Shape):
    def __init__(self, r):
        self.r = r

    def calculateArea(self):
        print("Area of circle a is ", 3.14 * self.r * self.r)

class Rectangle(Shape):
    def __init__(self, l, w):
        self.l= l
        self.w = w

    def calculateArea(self):
        print("area of a rectangle is ", self.l * self.w)


class main():
    def run(self):
        objects = [Circle(6), Rectangle(3,4)]
        for obj in objects:
            obj.calculateArea() 

res = main()                                   
res.run() 


# Area of circle a is  113.03999999999999
# area of a rectangle is  12