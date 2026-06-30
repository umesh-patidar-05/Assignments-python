ages=[]

def age():
    global ages
    print("Employee Ages:")
    ages.extend(map(int,input().split()))
    return ages