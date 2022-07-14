class Apple:
	def __init__(self, color, flavor):
		self.color = color
		self.flavor = flavor
	def __str__(self):
		return "This apple is {} and its flavor is {}".format(self.color, self.flavor)

	
 jonagold = Apple("red", "sweet")
 print(jonagold)
# This apple is red and its flavor is sweet
 help(Apple)
"""
Help on class Apple in module __main__:

class Apple(builtins.object)
 |  Apple(color, flavor)
 |  
 |  Methods defined here:
 |  
 |  __init__(self, color, flavor)
 |      Initialize self.  See help(type(self)) for accurate signature.
 |  
 |  __str__(self)
 |      Return str(self).
 |  
 |  ----------------------------------------------------------------------
 |  Data descriptors defined here:
 |  
 |  __dict__
 |      dictionary for instance variables (if defined)
 |  
 |  __weakref__
 |      list of weak references to the object (if defined)
 """
