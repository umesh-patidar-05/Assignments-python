def perfect(num):
    summ=0
    for i in range(1,num//2+1):
        if num%i==0:
            summ=summ+i
    if summ==num:
        return True
    else:
        return False