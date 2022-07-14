# -*- coding: utf-8 -*-
"""
Created on Tue Nov 10 23:09:48 2020

@author: Hp
"""
def convert_from_decimal(number, base):
    multiplier, result = 1, 0
    while number > 0:
        result += number % base * multiplier
        multiplier *= 10
        number = number//base
    return result

def test_convert_from_decimal():
    number, base = 9, 2
    assert(convert_from_decimal(number, base) == 1001)
    print('Test passed!')
    
if __name__ == '__main__':
    test_convert_from_decimal()