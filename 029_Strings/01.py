'''
Smart Log File Error Pattern Detector

A cybersecurity company stores server logs containing repeated system activity characters.

To detect suspicious looping behavior, the analytics team wants a Python program that finds the longest repeating substring present in the log file.

If multiple substrings have the same length, print the first one found.

 Input:

text
abcabcbb


Output:

text
abc
'''

# not correct
s=input("Enter string ")
s1=""
visit=[]
big=0
bs=""
for ch in s:
    if ch not in visit:
        s1+=ch
        visit.append(ch)
    else:
        if len(s1)>big:
            big=len(s1)
            bs=s1
            s1=""
        visit=[]
        visit.append(ch)
        
print(bs)        
        