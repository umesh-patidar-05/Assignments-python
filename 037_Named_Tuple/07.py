'''
A cricket academy wants to analyze player performance. Each player's information is stored as a tuple.

Tuple Format:

(player_id, player_name, runs_scored)

Requirements:

Read N player records from the user and store them as tuples in a list.
Display all player records.
Find and display the player who scored the highest runs.
Find and display the player who scored the lowest runs.
Calculate and display the total runs scored by all players.
Calculate and display the average runs scored.
Display players who scored more than 50 runs.

Test Case: 

Input:

Enter number of players: 5

101 Virat 82
102 Rohit 45
103 Gill 120
104 Hardik 38
105 SKY 76

Expected Output:

All Players:
(101, 'Virat', 82)
(102, 'Rohit', 45)
(103, 'Gill', 120)
(104, 'Hardik', 38)
(105, 'SKY', 76)

Highest Scorer:
(103, 'Gill', 120)

Lowest Scorer:
(104, 'Hardik', 38)

Total Runs:
361

Average Runs:
72.2

Players Scoring More Than 50 Runs:
(101, 'Virat', 82)
(103, 'Gill', 120)
(105, 'SKY', 76)
'''




n=int(input("Enter number of players: "))
players=[]
for i in range(n):
    print(f"\nEnter player {i+1} information:")
    idd=input("Enter id: ")
    name=input("Enter name: ")
    runs=int(input("Enter runs: "))
    players.append((idd,name,runs))
#print(players)    

print("\nAll Players:")
for i in players:
    print(i)
    
high=players[0]
low=players[0]
summ=0
for i in range(n):
    if players[i][2]>high[2]:
        high=players[i]
    if players[i][2]<low[2]:
        low=players[i]  

    summ+=players[i][2]
    
print("\nHighest Scorer:")
print(high)

print("\nLowest Scorer:")
print(low)

print("\nTotal Runs:")
print(summ)        

print("\nAverage Runs:")
avg=summ/n
print(round(avg,2))

print("\nPlayers Scoring More Than 50 Runs:")
for i in players:
    if i[2]>50:
        print(i)
