# You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.
# Given the string command, return the Goal Parser's interpretation of command.

class Solution:
    def interpret(self, command: str) -> str:
        r=''
        for i in range(len(command)):
            if command[i] != '(' and command[i] != ')':
                r += command[i]
            if command[i] == '(' and command[i+1] == ')' and i+1<len(command):
                r+='o'
            if command[i]=='(':
                continue
            if command[i] == ')':
                continue
        return r
