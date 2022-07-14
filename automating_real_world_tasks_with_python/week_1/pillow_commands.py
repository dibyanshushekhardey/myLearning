from PIL import Image
im = Image.open("bride.jpg")
im.rotate(45).show()
--------------------------------------
>>> help(PIL)

Help on package PIL:

NAME
    PIL - Pillow (Fork of the Python Imaging Library)

DESCRIPTION
    Pillow is the friendly PIL fork by Alex Clark and Contributors.
        https://github.com/python-pillow/Pillow/

    Pillow is forked from PIL 1.1.7.

    PIL is the Python Imaging Library by Fredrik Lundh and Contributors.
    Copyright (c) 1999 by Secret Labs AB.

    Use PIL.__version__ for this Pillow version.
    PIL.VERSION is the old PIL version and will be removed in the future.

    ;-)

PACKAGE CONTENTS
    BdfFontFile
    BlpImagePlugin
    BmpImagePlugin
    BufrStubImagePlugin
    ContainerIO
    CurImagePlugin
    DcxImagePlugin
    DdsImagePlugin
    EpsImagePlugin
...
-------------------------------------
# use PIL for working with images
# wanted to resize an image and save the new image with a new name
from PIL import Image
im = Image("example.jpg")
new_im = im.resize((640,480))
new_im.save("example_resized.jpg")
-------------------------------------
# we want to rotate an image, we can use code like this
from PIL import Image
im = Image("example.jpg")
new_im = im.rotate(90)
new_im.save("example_rotated.jpg")
-------------------------------------
# This method also returns a new image that we can then use to create the new rotated file. 
# Because the methods return a new object, we can even combine these operations into just one line that rotates, resizes, and saves
from PIL import Image
im = Image("example.jpg")
im.rotate(180).resize((640,480)).save("flipped_and_resized.jpg")
-------------------------------------
# we can even combine these operations into just one line that rotates, resizes, and saves
from PIL import Image
im = Image("example.jpg")
im.rotate(180).resize((640,480)).save("flipped_and_resized.jpg")
-------------------------------------
