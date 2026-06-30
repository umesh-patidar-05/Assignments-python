from functools import reduce

def long_name(s): 
    words=s.split()
    res=reduce(lambda x,y: x if len(x)>len(y) else y, words)
    return res