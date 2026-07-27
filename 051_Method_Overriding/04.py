'''
Assignment 4:

Create a parent class Vehicle with a method speed() that prints "Speed varies for different vehicles."

Create subclasses:

Car that overrides speed() to print "The car speed is 120 km/h."

Bike that overrides speed() to print "The bike speed is 80 km/h."

Use polymorphism to display the speed of different vehicles in the Main class.
'''





class Vehicle:
    def speed(self):
        print("Speed varies for different vehicles.")

class Car(Vehicle):
    def speed(self):
        print("The car speed is 120 km/h.")

class Bike(Vehicle):
    def speed(self):
        print('The bike speed is 80 km/h.')

class Main():
    def run(self):
        objects = [Car(), Bike()]        
        for obj in objects:
            obj.speed()

res = Main()
res.run()


# The car speed is 120 km/h.
# The bike speed is 80 km/h.