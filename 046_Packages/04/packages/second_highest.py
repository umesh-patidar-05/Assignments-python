def s_high(l):
    nl=[]
    for i in l:
        if i not in nl:
            nl.append(i)
    res=sorted(nl)
    return res[-2]   