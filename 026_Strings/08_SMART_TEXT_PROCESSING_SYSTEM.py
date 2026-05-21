'''
SMART TEXT PROCESSING SYSTEM

A software company is developing a Smart Text Processing System for
handling user messages. Different users require different text
transformations. To avoid creating separate applications, the company
wants a menu-driven program where users can select operations according
to their requirements.

The system should continue executing until the user selects Exit.

====================================================== MENU
======================================================

===== Smart Text Processing System =====

1.  Reverse Complete String
2.  Reverse Every Word
3.  Reverse Word Order
4.  Exit

====================================================== Choice 1 :

Conditions: - Reverse the complete string - Ignore extra spaces - Keep
special characters (@,#,$,%) in their original positions - Do not use
built-in reverse functions

Example: Input: ja@va#py

Output: yp@av#aj

Test Case 1: ab@cd#ef Output: fe@dc#ba

Test Case 2: py@th#on Output: no@ht#yp

Test Case 3: java@proOutput : orpa@vaj

====================================================== Choice 2 :

Conditions: - Reverse every word separately - Words containing digits
should not be reversed - Ignore extra spaces between words - First
letter of each reversed word should become uppercase

Example: Input: java is easy123 programming

Output: Avaj Si easy123 Gnimmargorp

Test Case 1: python full stack22 developer Output: Nohtyp Lluf stack22
Repoleved

Test Case 2: hello java99 world Output: Olleh java99 Dlrow

====================================================== Choice 3 :

Conditions: - Reverse order of words - Remove duplicate words - Ignore
case while checking duplicates - Keep only first occurrence

Example: Input: Java python Java react Python

Output: React Python Java

Test Case 1: HTML CSS HTML Java CSS Output: Java CSS HTML

Test Case 2: Python React Java Python React Output: Java React Python

====================================================== Choice 4
======================================================

Program Closed Successfully
'''



while True:
    print("===== Smart Text Processing System =====\n1.  Reverse Complete String\n2.  Reverse Every Word\n3.  Reverse Word Order\n4.  Exit")
    choice=int(input("Enter choice "))
    match choice:
        case 1:
            string=input("Enter string: ")
            revc=""
            final=""
            for ch in string:
                if ch.isalpha():
                   revc=ch+revc  
            
            j=0        
            for c in string:
                if c.isalpha():
                    #print(revc[j],end="")
                    final=final+revc[j]
                    j+=1
                else:
                    #print(c,end="")
                    final=final+c
            print()
            print(final)
            
    
        case 2:
            s=input("Enter the string ")
            words=s.split()
            i=0
            while i<len(words):
                word=words[i]
                rev=""
                if word.isalpha():
                    j=len(word)-1
                    while j>=0:
                        if j==len(word)-1:
                            rev=rev+word[j].upper()
                        else:    
                            rev=rev+word[j]
                        j=j-1
                    print(rev,end=" ")
                   
                else:
                    print(word,end=" ")
                i+=1   
            print()  

            
        case 3:
                       
            str=input("Enter string: ")
            s=str.split()
            visit=[]
            res=""
            for  ch1 in s:
                if ch1 not in visit:
                    visit.append(ch1)
            res=" ".join(visit[::-1])
            print(res)
            


        case 4:
            print("Program Closed Successfully")
            break
            
            
            