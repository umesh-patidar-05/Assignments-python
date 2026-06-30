def vow(s):
    words=s.split()
    count=0
    for w in words:
        if w[0] in "AEIOU":
            count+=1
    return count