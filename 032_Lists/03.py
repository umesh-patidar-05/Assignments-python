'''
Industrial Sensor Peak Energy Monitoring System

Problem Statement

A factory machine records energy consumption at regular intervals.

A peak is defined as a value greater than or equal to its neighbors.

Tasks:

Find all peak energy values
Compute sum of squares of peak values
Compute average of peak values
Return difference between max peak and min peak
If no peaks, return -1

Test Case 1

Input:
energy = [20, 40, 30, 60, 50]

Output:
Peaks = [40, 60]
Sum of squares = 5200
Average = 50
Difference = 20

Test Case 2

Input:
energy = [10, 20, 15, 25, 20, 30]

Output:
Peaks = [20, 25, 30]
Sum of squares = 1925
Average = 25
Difference = 10

Test Case 3

Input:
energy = [5]

Output:
Peaks = [5]
Sum of squares = 25
Average = 5
Difference = 0
'''




n=int(input("Enter size of array "))
arr=[]
for i in range(n):
    arr.append(int(input(f"Enter energy at time{i+1}: ")))
print("Traffic",arr)    

peak=[]
for i in range(n):
    if i==0:
        if n==1 or arr[i]>arr[i+1]:
            peak.append(arr[i])
    elif i==n-1:
        if arr[i]>arr[i-1]:
            peak.append(arr[i])
    else:
        if arr[i-1]<arr[i] and arr[i]>arr[i+1]:
            peak.append(arr[i])
    
if peak!=[]:    
    print("Peaks = ",peak)            
    
    sum_sq=0
    sum=0
    max=0
    min=peak[0]
    for i in peak:
        sum_sq=sum_sq+i*i
        sum=sum+i
        if i>max:
            max=i
        if i<min:
            min=i
    
    print("Sum of square =",sum_sq)
    print("Average =",sum//len(peak))
    print("Differences =",max-min)        
else:
    print("NO peak available:")