'''
import socket

# to make a connection between a web site
mysock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysock.connect(('data.pr4e.org', 80))
cmd = 'GET http://data.pr4e.org/romeo.txt HTTP/1.0\r\n\r\n'.encode()
mysock.send(cmd)

while True:
    data = mysock.recv(512)
    if( len(data) < 1 ):
        break
    print(data.decode())
mysock.close()
'''


'''
import socket

mysock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysock.connect(('data.pr4e.org', 80))
cmd = 'GET http://data.pr4e.org/intro-short.txt HTTP/1.0\r\n\r\n'.encode()
mysock.send(cmd)

while True:
    data = mysock.recv(512)
    if len(data) < 1:
        break
    print(data.decode(),end='')

mysock.close()
'''

'''
import urllib.request, urllib.parse, urllib.error

hand = urllib.request.urlopen('http://data.pr4e.org/romeo.txt')
for line in hand:
    print(line.decode().strip())
'''

'''
import urllib.request, urllib.parse, urllib.error

hand = urllib.request.urlopen('http://www.dr-chuck.com/pagel.htm')
counts = dict()
for line in hand:
    words = line.decode().split()
    for word in words:
        counts[word] = counts.get(word, 0) + 1


print(counts)
'''

'''
import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup

url = input('Enter -')
html = urllib.request.urlopen(url).read()
soup = BeautifulSoup(html, 'html.parser')

# Retrieve all of the anchor tags
tags = soup('a')
for tag in tags:
    print(tag.get('href', None))
'''

'''
import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
import ssl

# Ignore SSL Certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

url = input('Enter -')
html = urllib.request.urlopen(url).read()
soup = BeautifulSoup(html, 'html.parser')

# Retrieve all of the anchor tags
tags = soup('a')
for tag in tags:
    print(tag.get('href', None))
'''
'''
# To run this, download the BeautifulSoup zip file
# http://www.py4e.com/code3/bs4.zip
# and unzip it in the same directory as this file

import re
from urllib.request import urlopen
from bs4 import BeautifulSoup
import ssl

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

url = input('Enter: ')
html = urlopen(url, context=ctx).read()
soup = BeautifulSoup(html, "html.parser")

# Retrieve all of the anchor tags
spans = soup('span')

numbers = []
for span in spans:
    numbers.append(int(span.string))
print(sum(numbers))
'''
import urllib.request, urllib.parse, urllib.error
from urllib.request import urlopen
import json
serviceurl = "http://python-data.dr-chuck.net/geojson?"

while True:

    address = input("Enter location: ")

    if len(address) < 1:
        break
    parameters = {"sensor": "false", "address": address}
    paramsurl = urllib.parse.urlencode(parameters)


    queryurl = serviceurl + paramsurl
    print("DATA URL: ", queryurl)

    uh = urlopen(queryurl)
    data = uh.read()
    js = json.loads(str(data))
    place_id = js["results"][0]["place_id"]
    print("PLACE ID: ", place_id)