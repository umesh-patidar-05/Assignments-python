def factors(num):
    res=[]
    for i in range(1,num+1):
        if num%i==0:
            res.append(i)
    return res    