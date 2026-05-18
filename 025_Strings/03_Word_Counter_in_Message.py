'''
Word Counter in Complaint Message

A customer care system wants to count how many words are present in a complaint message.

Input:
Enter complaint: Delivery was delayed again today

Output:
Total words: 5
'''



complain=input("Enter complaint: ")
w=complain.split()
l=len(w)
print("Total Words: ",l)

