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
for word in words:
    i=1
    if word not in visit:
        
        print(word,end=" ")
        visit.append(word)
    else:
        print(word,f"({i})",end=" ")
        i+=1