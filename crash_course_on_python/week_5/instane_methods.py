>>> class Piglet:
	pass

>>> hamlet = Piglet()
>>> class Piglet:
	def speak(self):
		print("oink oink")

		
>>> hamlet = Piglet()
>>> hamlet.speak
<bound method Piglet.speak of <__main__.Piglet object at 0x00E17FE8>>
>>> hamlet.speak()
oink oink
>>> class Piglet:
	name = 'piglet'
	def speak(self):
		print("Oink! I'm {}! Oink!".format(self.name))

		
>>> hamlet = Piglet()
>>> hamlet.speak()
Oink! I'm piglet! Oink!
>>> hamlet.name = "Hamlet"
>>> hamlet.speak()
Oink! I'm Hamlet! Oink!
>>> petunia = Piglet()
>>> petunia.name = "Petunia"
>>> petunia.speak()
Oink! I'm Petunia! Oink!
>>> class Piglet:
	years = 0
	def pig_years(self):
		return self.years * 18

	
>>> piggy = Piglet()
>>> print(piggy.pig_years())
0
>>> piggy.years = 2
>>> print(piggy.pig_years())
36
