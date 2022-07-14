class Fruit:
def __init__(self, color, flavor):
  self.color = color
  self.flavor = flavor


class Apple(Fruit):
pass

class Grape(Fruit):
pass

granny_smith = Apple("green", "tart")
carnelain = Grape("purple", "sweet")
print(granny_smith)
#Out: <__main__.Apple object at 0x03441580>
print(granny_smith.flavor)
#Out: tart
print(carnelian.color)
#Out: purple
# Class aNIMAL
class Animal:
sound = ""
def __init__(self, name):
  self.name = name
def speak(self):
  print("{sound} I'm {name}! {sound}".format(name = self.name, sound = self.sound))


class Piglet(Animal):
sound = "Oink!"


hamlet = Piglet("Hamlet")
hamlet.speak()
#Out: Oink! I'm Hamlet! Oink!
class Cow(Animal):
sound = "Mooo"


milky = Cow("Milky White")
milky.speak()
#Out: Mooo I'm Milky White! Mooo
