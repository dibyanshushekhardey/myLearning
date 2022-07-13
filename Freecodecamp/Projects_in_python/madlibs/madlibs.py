# # string concatenation
# from pickle import Pickler


# youtuber="Tanmay Bhat"  # some string variable

# # a few ways to do this
# print("subscribe to "+youtuber)
# print("subscribe to {}".format(youtuber))
# print(f"subscribe to {youtuber}")

adj=input("Adjectives: ")
verb1=input("Verb: ")
verb2 = input("Verb: ")
famous_person=input("Enter famous person: ")

madlib=f"Computer programming is so {adj}! It makes me so excited all the time because \
    I love to {verb1}. Stay hydrated and {verb2} like you are {famous_person}."

print(madlib)