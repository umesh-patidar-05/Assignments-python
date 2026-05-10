'''
Assignment 7: Cricket Run Rate

In cricket, overs are given in decimal format (e.g., 48.3 means 48 overs and 3 balls). Convert overs into total balls and calculate run rate.

Input:
Total runs = 275
Overs = 48.3

Expected Output:
Total Balls = 291
Run Rate = 5.67
'''




Truns = int(input("Total runs = "))
overs = float(input("Overs = "))
tballs = int(overs)*6  + (overs*10)%10
rate = Truns/(int(overs) + ((overs*10)%10)/6)
print("Total Balls = ",tballs)
print("Run Rate = ",round(rate,2))
