'''
========================================
Assignment 7: Temperature Converter
========================================

A weather application needs to convert temperature from Celsius to Fahrenheit.

Write a Python program that:
- Accepts temperature in Celsius as input.
- Converts it to Fahrenheit using the formula:
  F = (C × 9/5) + 32
- Displays the result.

Example:
Celsius = 25
Fahrenheit = 77.0
'''




celsius = int(input("Enter temperature in celsius "))
fahrenheit = (celsius * 9/5) + 32
print("Celsius = ",celsius)
print("Fahrenheit =",fahrenheit)