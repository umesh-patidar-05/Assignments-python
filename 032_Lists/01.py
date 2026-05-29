'''
Mountain Hiking Elevation Analysis

Problem Statement

A trekking company records the elevation (in meters) reached by a hiker at different checkpoints during a mountain climb.

A checkpoint is considered a peak checkpoint if its elevation is not smaller than its adjacent checkpoints.

Given an array elevation[] of size N, find the index of any one peak checkpoint.

Test Case 1

Input:
elevation = [1200, 1450, 1700, 1600, 1500]

Output:
2

Explanation:
1700 is greater than both adjacent values 1450 and 1600.

Test Case 2

Input:
elevation = [800, 900, 950, 1000]

Output:
3

Explanation:
Last element can also be a peak because it has no right neighbor.

Test Case 3

Input:
elevation = [3000]

Output:
0

Explanation:
Single element is always a peak.
'''



n=int(input("Enter size of array "))
arr=[]
for i in range(n):
    arr.append(int(input(f"Enter element {i+1}: ")))
print("elevation",arr)    

peakindex=-1
for i in range(n):
    if i==0:
        if n==1 or arr[i]>arr[i+1]:
            peakindex=i
            break
    elif i==n-1:
        if arr[i]>arr[i-1]:
            peakindex=i
            break
    else:
        if arr[i-1]<arr[i] and arr[i]>arr[i+1]:
            peakindex=i
            break
print("peak checkpoint index is ",peakindex)            