'''
Assignment 5:

Create a parent class Employee with a method calculateSalary() that prints "Base salary calculation for Employee."

Create subclasses:

Manager that overrides calculateSalary() to add a bonus to the base salary.

Developer that overrides calculateSalary() to calculate salary based on hours worked.

Demonstrate the overridden method in the Main class by creating an array of Employee objects and calling calculateSalary() on each.
'''




class Employee:
    def calculateSalary(self):
        print("Base salary calculation for Employee is ")

class Manager(Employee):
    def __init__(self, base, bonus):
        self.base = base
        self.bonus = bonus

    def calculateSalary(self):
        print(self.base + self.bonus)

class Developer(Employee):
    def __init__(self, salary_perhour, hours_work):
        self.salary_perhour = salary_perhour
        self.hours_work = hours_work

    def calculateSalary(self):
        print(self.salary_perhour * self.hours_work)


class Main():
    def run(self):
        objects = [Manager(5000, 800), Developer(500, 8)]
        for obj in objects:
            obj.calculateSalary()

res = Main()
res.run()            

# 5800
# 4000           