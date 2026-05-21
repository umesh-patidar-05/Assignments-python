'''
Find the Most Frequently Occurring Word
News Channel Keyword Analyzer

A news agency analyzes breaking news headlines to identify the most repeated keyword in a report.

Write a Python program to find the word with the highest frequency.

Input:
india won the match and india created history
Output:
india
'''


st=input("Enter news headline: ")
words=st.split()
gre=0
big=""
for word in words:
    count=0
    for w in words:
        if w==word:
            count+=1
    if  count>gre:
        gre=count
        big=word
print(big)        