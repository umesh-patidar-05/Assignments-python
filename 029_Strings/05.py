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


#not correct
s = input("Enter String: ")
result = ""

for i in s:
    found = 0

    for j in result:
        if i == j:
            found = 1
            break

    if found == 0:
        result += i

print(result)