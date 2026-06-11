'''
=========================================
WEBSITE PAGE VISIT TRACKER
==========================

A website records page visits.

pages = ["Home","About","Home","Contact","Home","About"]

Write a program to:

* Count visits of each page using a dictionary.
* Display page name and visit count.

Sample Output:
Home visited 3 times
About visited 2 times
Contact visited 1 time
'''




pages = ["Home","About","Home","Contact","Home","About"]
dic={}
for p in pages:
    dic[p]=dic.get(p,0)+1

for k,v in dic.items():
    if v>1:
        print(k,"visited",v,"times")
    else:
        print(k,"visited",v,"time")
