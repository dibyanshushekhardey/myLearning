'''
import xml.etree.ElementTree as ET
data = ''''''<person>
    <name>Chuck</name>
    <phone type="intl">
        +1 734 303 4456
    </phone>
    <email hide="yes"/>
</person>''''''

tree = ET.fromstring(data)
print("Name: ", tree.find('name').text)
print("Phone: ", tree.find('phone').text)
print('Atrr: ', tree.find('email').get('hide'))
'''

'''
import xml.etree.ElementTree as ET

data = '''''''<stuff>
    <users>
        <user x="2">
            <id>001</id>
            <name>Chuck</name>
        </user>
        <user x="7">
            <id>009</id>
            <name>Brent</name>
        </user>
    </users>
</stuff>''''''

stuff = ET.fromstring(data)
lst = stuff.findall('users/user')
print('User count: ', len(lst))
for item in lst:
    print("Name: ", item.find('name').text)
    print("Id: ", item.find('id').text)
    print('Attribute: ', item.get('x'))
'''
'''import xml.etree.ElementTree as ET

data = '''''''<commentinfo>
<note>This file contains the actual data for your assignment - good luck!</note>
<comments>
<comment>
<name>Abisha</name>
<count>100</count>
</comment>
<comment>
<name>Tyelor</name>
<count>99</count>
</comment>
<comment>
<name>Michee</name>
<count>98</count>
</comment>
<comment>
<name>Shanade</name>
<count>94</count>
</comment>
<comment>
<name>Ayeisha</name>
<count>94</count>
</comment>
<comment>
<name>Danial</name>
<count>93</count>
</comment>
<comment>
<name>Amyrose</name>
<count>90</count>
</comment>
<comment>
<name>Rihana</name>
<count>88</count>
</comment>
<comment>
<name>Eisha</name>
<count>87</count>
</comment>
<comment>
<name>Kahlen</name>
<count>85</count>
</comment>
<comment>
<name>Faheem</name>
<count>83</count>
</comment>
<comment>
<name>Linden</name>
<count>82</count>
</comment>
<comment>
<name>Marcus</name>
<count>79</count>
</comment>
<comment>
<name>Reegan</name>
<count>77</count>
</comment>
<comment>
<name>Alf</name>
<count>76</count>
</comment>
<comment>
<name>Muir</name>
<count>75</count>
</comment>
<comment>
<name>Amii</name>
<count>75</count>
</comment>
<comment>
<name>Kael</name>
<count>70</count>
</comment>
<comment>
<name>Kuba</name>
<count>69</count>
</comment>
<comment>
<name>Jamielee</name>
<count>64</count>
</comment>
<comment>
<name>Ayman</name>
<count>64</count>
</comment>
<comment>
<name>Deniss</name>
<count>62</count>
</comment>
<comment>
<name>Renars</name>
<count>58</count>
</comment>
<comment>
<name>Cillian</name>
<count>54</count>
</comment>
<comment>
<name>Neeve</name>
<count>50</count>
</comment>
<comment>
<name>Caitlin</name>
<count>49</count>
</comment>
<comment>
<name>Nabeeha</name>
<count>49</count>
</comment>
<comment>
<name>Mena</name>
<count>49</count>
</comment>
<comment>
<name>Zuzu</name>
<count>48</count>
</comment>
<comment>
<name>Seonaidh</name>
<count>47</count>
</comment>
<comment>
<name>Benn</name>
<count>42</count>
</comment>
<comment>
<name>Keri</name>
<count>40</count>
</comment>
<comment>
<name>Aarifah</name>
<count>39</count>
</comment>
<comment>
<name>Bo</name>
<count>38</count>
</comment>
<comment>
<name>Safiyyah</name>
<count>35</count>
</comment>
<comment>
<name>Elaine</name>
<count>35</count>
</comment>
<comment>
<name>Keegan</name>
<count>31</count>
</comment>
<comment>
<name>Seane</name>
<count>26</count>
</comment>
<comment>
<name>Orrin</name>
<count>26</count>
</comment>
<comment>
<name>Shergo</name>
<count>25</count>
</comment>
<comment>
<name>Amaarah</name>
<count>22</count>
</comment>
<comment>
<name>Akam</name>
<count>22</count>
</comment>
<comment>
<name>Lilygrace</name>
<count>20</count>
</comment>
<comment>
<name>Allister</name>
<count>16</count>
</comment>
<comment>
<name>Rajan</name>
<count>15</count>
</comment>
<comment>
<name>Adenn</name>
<count>15</count>
</comment>
<comment>
<name>Manas</name>
<count>14</count>
</comment>
<comment>
<name>Faisal</name>
<count>13</count>
</comment>
<comment>
<name>Briony</name>
<count>6</count>
</comment>
<comment>
<name>Maykayla</name>
<count>2</count>
</comment>
</comments>
<style id="dark-theme"/>
</commentinfo>''''''
xml_data = ET.fromstring(data)
search_str = "comments/comment"
count_tags = xml_data.findall(search_str)

#Computing the sum
total_count = 0
for tag in count_tags:
	#We'll find the "count" element inside each "comment" element and add it
	count = tag.find('count')
	total_count += int(count.text)

print(total_count)
'''
'''
import urllib.request, urllib.parse, urllib.error
import xml.etree.ElementTree as ET
import ssl

api_key = False
# If you have a Google Places API key, enter it here
# api_key = 'AIzaSy___IDByT70'
# https://developers.google.com/maps/documentation/geocoding/intro

if api_key is False:
    api_key = 42
    serviceurl = 'http://py4e-data.dr-chuck.net/xml?'
else :
    serviceurl = 'https://maps.googleapis.com/maps/api/geocode/xml?'

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

while True:
    address = input('Enter location: ')
    if len(address) < 1: break

    parms = dict()
    parms['address'] = address
    if api_key is not False: parms['key'] = api_key
    url = serviceurl + urllib.parse.urlencode(parms)
    print('Retrieving', url)
    uh = urllib.request.urlopen(url, context=ctx)

    data = uh.read()
    print('Retrieved', len(data), 'characters')
    print(data.decode())
    tree = ET.fromstring(data)

    results = tree.findall('result')
    lat = results[0].find('geometry').find('location').find('lat').text
    lng = results[0].find('geometry').find('location').find('lng').text
    location = results[0].find('formatted_address').text

    print('lat', lat, 'lng', lng)
    print(location)
'''
import urllib.request, urllib.parse, urllib.error
import json

#Api
api = 'http://py4e-data.dr-chuck.net/json?'

#Input data
link = input('Enter location: ')
link = api + urllib.parse.urlencode({'address':link})
print('Retrieving', link)

html = urllib.request.urlopen(link).read().decode()
print('Retrieved', len(html), 'characters')

try:
    js = json.loads(html)
except:
    js = None

placeId = js['results'][0]['place_id']
print('Place id', placeId)