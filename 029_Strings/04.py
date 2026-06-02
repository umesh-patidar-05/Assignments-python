'''
Cloud Storage Duplicate File Name Resolver

A cloud storage company stores uploaded filenames from users.

Sometimes multiple duplicate filenames are uploaded.

The system should:

* Keep the first occurrence unchanged
* Add (1), (2), (3)... for duplicates

### Input:

text
file file image file image data


### Output:

text
file file(1) image file(2) image(1) data
'''


#not correct
str=input("Enter string: ")
words=str.split()
visit=[]
for i in range(len(words)):
    count=0
    for j in range(i):
        if words[i]==words[j]:
            count+=1
    if count==0:
        print(words[i],end=" ")
    else:
        print(words[i],"(",count,")",sep="",end=" ")            