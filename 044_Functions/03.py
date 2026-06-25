'''
3.
Cricket Tournament – Highest Run Scorer

A cricket academy wants to reward the player who scored the highest number of runs in a tournament.

Write a Python program to identify the highest run scorer using reduce() and a lambda expression.

Input
players = [
    ("Virat", 78),
    ("Rohit", 102),
    ("Gill", 89),
    ("KL Rahul", 65),
    ("Iyer", 91)
]
Expected Output
Highest Run Scorer: Rohit
'''




from functools import reduce
players=[]
n=int(input("Enter number of players "))
for i in range(n):
    print(f"Enter player {i+1} details: ")
    name=input("Enter name: ")
    score=int(input("Enter score: "))
    players.append((name,score))

highest=reduce(lambda x,y: x if x[1]>y[1] else y, players)    
print("Highest Run Scorer:",highest[0])    