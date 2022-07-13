# My solution
heros=['spider man','thor','hulk','iron man','captain america']
#print(heros)
# q1 
print(len(heros))
# q2
heros.append('black panther')
print(heros)
# q3
heros.remove('black panther')
#print(heros)
heros.insert(3, 'black panther')
print(heros)
# q4
heros[1:3]=['doctor strange']
print(heros)
# q5
heros.sort()
print(heros)


# instructor solution
# 2. You have a list of your favourite marvel super heros
# heros=['spider man','thor','hulk','iron man','captain america']
# Using this list

heros=['spider man','thor','hulk','iron man','captain america']
# 1. Length of the list
print(len(heros))
# 2. Add 'black panther' at the end of this list
heros.append('black panther')
print(heros)
# 3. You realize that you need to add 'black panther' after 'hulk',
# so remove it from the list first and then add it after 'hulk'
heros.remove('black panther')
heros.insert(3,'black panther')
print(heros)
# 4. Now you don't like thor and hulk because they get angry easily :)
#    So you want to remove thor and hulk from list and replace them with doctor strange (because he is cool).
#    Do that with one line of code.
heros[1:3]=['doctor strange']
print(heros)
# 5. Sort the list in alphabetical order
heros.sort()
print(heros)
