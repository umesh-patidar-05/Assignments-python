def prime(num):    
    if num<2:
        return "Not a Prime Number"
    else:
        for i in range(2,num//2+1):
            if num%i==0:
                return "Not a Prime Number"
        else:
            return "Prime Number"