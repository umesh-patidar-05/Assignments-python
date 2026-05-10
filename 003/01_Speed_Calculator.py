'''
Assignment 1: Speed Calculator

Write a Python program that:

Accepts distance (in km) and time (in hours).
Calculates speed.

Input:
Distance = 120
Time = 2

Output:
Speed = 60 km/h
----------------------------------------
'''

'''
distance,time = map(int,input("Enter distance and time.").split())
speed = distance//time
print(f"Speed = {speed} km/h")
'''


distance=int(input("Distance(in km) = "))
time=int(input("Time(in hours) = "))
speed=distance//time
print("Speed =",speed,"km/h")


