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

#not complete
s=input("Enter string ")
visit=[]
sub=""
final=[]
for ch in s:
    if ch not in visit:
        sub=sub+ch
        visit.append(ch)
    else:
        final.append(sub)
        sub=ch
        visit=[]
max=0
res=""
print(final)
for i in final:
    if len(i)>max:
        res=i
        max=len(i)    
print(res)        