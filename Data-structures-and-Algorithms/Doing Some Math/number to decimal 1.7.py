# -*- coding: utf-8 -*-
"""
Created on Tue Nov 10 20:25:12 2020

@author: Hp
"""
# Doing some math
# Converting between different bases

def convert_to_decimal(number, base):
    multiplier, result = 1, 0
    while number > 0:
        result += number % 10 * multiplier
        multiplier *= base
        number = number//10
    return result

def test_convert_to_decimal():
    number, base = 1001, 2
    assert(convert_to_decimal(number, base) == 9)
    print('Test passed!')
    
if __name__ == '__main__':
    test_convert_to_decimal()