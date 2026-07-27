'''
Assignment 3.

Create a parent class Bank with a method getInterestRate() that returns 0.

Create subclasses:

SBI that overrides getInterestRate() to return 5.

ICICI that overrides getInterestRate() to return 6.

Axis that overrides getInterestRate() to return 7.

In the Main class, demonstrate method overriding by calling getInterestRate() on different bank objects.
'''





class Bank:
    def getInterestRate(self):
        return 0

class SBI(Bank):
    def getInterestRate(self):
        return 5

class ICICI(Bank):
    def getInterestRate(self):
        return 6
    
class Axis(Bank):
    def getInterestRate(self):
        return 7

class main():
    def run(self):
        objects = [SBI(), ICICI(), Axis()]    
        for obj in objects:
            print(obj.getInterestRate())

res = main()
res.run()


# 5
# 6
# 7