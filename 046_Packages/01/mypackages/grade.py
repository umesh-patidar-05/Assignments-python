from mypackages import percent

def grade(l):
    x=percent.percentage(l)
    if x>=90:
        return "A+"
    elif x>=80:
        return "A"
    elif x>=70:
        return "B"
    elif x>=60:
        return "C"
    elif x>=50:
        return "D"
    else:
        return "Fail"