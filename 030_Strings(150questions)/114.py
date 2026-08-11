'''
LeetCode #392 

Check if one string is a subsequence of another.

Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

 

Example 1:

Input: s = "abc", t = "ahbgdc"
Output: true
Example 2:

Input: s = "axc", t = "ahbgdc"
Output: false
 

Constraints:

0 <= s.length <= 100
0 <= t.length <= 104
s and t consist only of lowercase English letters.
 

Follow up: Suppose there are lots of incoming s, say s1, s2, ..., sk where k >= 109, and you want to check one by one to see if t has its subsequence. In this scenario, how would you change your code?
'''






# s = "abc"
# t = "ahbgdc"
# res = ""
# found =0
# j = 0

# if s == "":
#     print("True")

# for i in range(len(s)):
#     for k in range(j, len(t)):

#         if s[i] == t[k]:
#             res = res + s[i]
#             j = k+1
#             if res == s:
#                 found = 1
#                 break

      
# if found == 1:
#     print("True")

# else:
#     print("False")            

           


s = ["h","e","l","l","o"]
print(s[::-1])  
        