'''
class PartyAnimal:
    x = 0

    def party(self):
        self.x = self.x + 1
        print("so far", self.x)

an = PartyAnimal()

print("type", type(an))
print("dir", dir(an))
'''

'''
# construction and destruction 
class PartyAnimal:
    x = 0

    def __init__(self):
        print("I am consturcted")

    def party(self):
        self.x = self.x + 1
        print("so far", self.x)

    def __del__(self):
        print("I am destructed")

an = PartyAnimal()

an.party()
an.party()

an = 43
print("an is", an)
'''

'''
# multiple instances in class

class PartyAnimal:
   x = 0
   name = ''
   def __init__(self, name):
     self.name = name
     print(self.name,'constructed')

   def party(self) :
     self.x = self.x + 1
     print(self.name,'party count',self.x)

s = PartyAnimal('Sally')
j = PartyAnimal('Jim')

s.party()
j.party()
s.party()
'''
