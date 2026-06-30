def dup_remove(l):
    res=[]
    for a in l:
        if a not in res:
            res.append(a)
    return res