def to_seconds(hours, minutes, seconds):
"""Returns the amount bof seconds in the given hours, minutes and seconds."""
  return hours * 3600 + minutes * 60 + seconds

help(to_seconds)
# Help on function to_seconds in module __main__:

to_seconds(hours, minutes, seconds)
  Returns the amount bof seconds in the given hours, minutes and seconds.

# Docstring example 2
class Piglet:
"""Represents a piglet that can say their name."""
years = 0
name = ""
def speak(self):
  """Outputs a message including the name of the piglet."""
  print("Oink! I'm {}! Oink!".format(self.name))
def pig_years(self):
  """Converts the current age to equivalent pig years."""
  return self.years * 18

