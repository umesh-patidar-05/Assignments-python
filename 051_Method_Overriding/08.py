'''
Assignment 8:

Ravi's fitness club has introduced a Rewards System to motivate members based on their workout hours. The program includes two classes: Member and PremiumMember.


For regular members:

Rewards Points = hours worked out × 2


For premium members:

Rewards Points = hours worked out × 4


Calculate and display the rewards points earned by the members using an overridden method calculateRewardsPoints.


Input format:


The first line of input consists of an integer representing the total hours worked out by the member.


The second line consists of premium member status (a string) - "yes" if the member is a premium member, "no" if they are not.


Output format:


The output displays the rewards points earned based on the hours worked out.


Code constraints:

1 ≤ hours ≤ 100


5  

yes


output

20
'''



class Member:
    def calculateRewardsPoints(self, hours):
        print("Rewards Points = ", hours *2)


class PremiumMember(Member):  
    def calculateRewardsPoints(self, hours):
        print("Rewards Points = ", hours *4)  

hours = int(input())        
status = input()

if status == "yes":
    obj = PremiumMember()

else:
    obj = Member()

obj.calculateRewardsPoints(hours)        