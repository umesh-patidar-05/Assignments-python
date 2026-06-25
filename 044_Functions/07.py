'''
7.
Assignment: File Compression System (String Compression)

A file compression company wants to reduce the size of text files before storing them. One simple compression technique is to replace consecutive repeated characters with the character followed by its count.

For example:

AAABBCCCCD → A3B2C4D1

As a software developer, your task is to write a recursive Python program to compress a given string.

Task

Write a recursive function that compresses a string by counting consecutive occurrences of each character.

Input
Enter a String:
AAABBCCCCD
Output
Compressed String = A3B2C4D1
Sample Input 2
Enter a String:
WWWWXXYYZ
Sample Output 2
Compressed String = W4X2Y2Z1
Sample Input 3
Enter a String:
AAAAA
Sample Output 3
Compressed String = A5
'''





def compress(s, i=0, count=1):
    if i == len(s) - 1:
        return s[i] + str(count)

    if s[i] == s[i + 1]:
        return compress(s, i + 1, count + 1)

    return s[i] + str(count) + compress(s, i + 1, 1)


text = input("Enter a String: ")

print("Compressed String =", compress(text))