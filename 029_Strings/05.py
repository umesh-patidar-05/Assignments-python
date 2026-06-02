'''
Social Media Hashtag Trend Window

A social media company wants to analyze the smallest substring containing all unique characters from a hashtag.

### Input:

text
aabcbcdbca


### Output:

text
dbca


### Explanation:

dbca contains all unique characters: a,b,c,d
'''


#not done
s = input("Enter String: ")
visit=[]
found=0
for i in s:
    if i not in visit:
        visit.append(i)
for i in range(len(s)):
    sub=[]
    for j in range(len(s)):
        sub=s[i:j+1]
        for k in visit:
            if k not in sub:
                break    
        else:
            print(sub)
            break    