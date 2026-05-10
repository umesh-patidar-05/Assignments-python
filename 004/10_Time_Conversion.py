'''
Assignment 10: Time Conversion

Convert total seconds into hours, minutes, and seconds.

Input:
Total seconds = 7384

Expected Output:
Hours = 2
Minutes = 3
Seconds = 4
'''



tseconds = int(input("Total seconds"))
hours = (tseconds//(60*60))
minutes = (tseconds%(60*60))//60
seconds = (tseconds%(60*60))%60
print("Hours = ",hours)
print("Minutes = ",minutes)
print("Seconds = ",seconds)

