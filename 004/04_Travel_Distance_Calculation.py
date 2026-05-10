'''
Assignment 4: Travel Distance Calculation

A person is traveling at a constant speed. Time is given in hours and minutes. Convert total time into hours and calculate distance.

Input:
Speed = 60 km/hr
Time = 2 hours 30 minutes

Expected Output:
Total Time = 2.5 hours
Distance = 150.0 km
'''







speed = int(input("Speed = "))
hour,minute = map(int,input("Time = ").split())
totaltime = hour + (minute/60)
distance = speed*totaltime
print(f"Total time = {totaltime} hours")
print(f"Distance = {distance} km") 