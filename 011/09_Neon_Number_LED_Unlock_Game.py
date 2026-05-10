'''
Neon Number LED Unlock Game
You're programming a new LED display game. The game level unlocks only when a neon number is entered.

A neon number is a number where the sum of the digits of its square is equal to the number itself.
Example: 9 → 9² = 81 → 8 + 1 = 9

Accept a number from the player.
Check whether it is a neon number using loops.

If true, display:
Glowing Success! You've found the Neon Number!

Otherwise display:
Try again! Not quite glowing yet.

Input:
9

Output:
Glowing Success! You've found the Neon Number!
'''



'''
n=int(input("Enter number = "))
sum=0
squ = n*n
while squ>0:
    rem=squ%10
    sum+=rem
    squ=squ//10
if n==sum:
    print("Glowing Success! You've found the Neon Number!")
else:
    print("Try again! Not quite glowing yet.")
'''

n=int(input("Enter number = "))
sq=n*n
sum=0
for i in str(sq):
    sum=sum+int(i)
if n==sum:
    print("Glowing Success! You've found the Neon Number!")
else:
    print("Try again! Not quite glowing yet.")