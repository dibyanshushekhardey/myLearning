student-0000000@corpweb:~$ cd /data/feedback
student-0000000@corpweb:/data/feedback$ ls
001.txt  005.txt  007.txt  019.txt  020.txt
student-0000000@corpweb:/data/feedback$ cat 007.txt
Good deal for a 2015 RAV4
Anonymous
2018-04-17
Called them to look for a second-hand RAV4 and they are very nice and patience to help me find me a few matche                                                          s then scheduled an appointmet with me. Came in and they had everything ready for me. I was surprised how prof                                                          essional those sales are and they explained and answered all my questions. Ended up buying the car and been us                                                          ing it for more than a month now. Everything looks good!
student-0000000@corpweb:/data/feedback$ cd ~
student-0000000@corpweb:~$ nano run.py
student-0000000@corpweb:~$ chmod +x ~/run.py
student-0000000@corpweb:~$ ./run.py
{'feedback': "I've being look around for a second handed Lexus RX for my family and this store happened to hav                                                          e a few of those. The experience was similar to most car dealers. The one I ended up buying has good condition                                                           and low mileage. I am pretty satisfied with the price they offered.", 'date': '2019-06-05', 'name': 'Tom', 't                                                          itle': 'You will find what you want here'}
Traceback (most recent call last):
  File "/usr/local/lib/python3.5/dist-packages/urllib3/connection.py", line 160, in _new_conn
    (self._dns_host, self.port), self.timeout, **extra_kw
  File "/usr/local/lib/python3.5/dist-packages/urllib3/util/connection.py", line 61, in create_connection
    for res in socket.getaddrinfo(host, port, family, socket.SOCK_STREAM):
  File "/usr/lib/python3.5/socket.py", line 733, in getaddrinfo
    for res in _socket.getaddrinfo(host, port, family, type, proto, flags):
socket.gaierror: [Errno -2] Name or service not known

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/local/lib/python3.5/dist-packages/urllib3/connectionpool.py", line 677, in urlopen
    chunked=chunked,
  File "/usr/local/lib/python3.5/dist-packages/urllib3/connectionpool.py", line 392, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/lib/python3.5/http/client.py", line 1145, in request
    self._send_request(method, url, body, headers)
  File "/usr/lib/python3.5/http/client.py", line 1190, in _send_request
    self.endheaders(body)
  File "/usr/lib/python3.5/http/client.py", line 1141, in endheaders
    self._send_output(message_body)
  File "/usr/lib/python3.5/http/client.py", line 945, in _send_output
    self.send(msg)
  File "/usr/lib/python3.5/http/client.py", line 888, in send
    self.connect()
  File "/usr/local/lib/python3.5/dist-packages/urllib3/connection.py", line 187, in connect
    conn = self._new_conn()
  File "/usr/local/lib/python3.5/dist-packages/urllib3/connection.py", line 172, in _new_conn
    self, "Failed to establish a new connection: %s" % e
urllib3.exceptions.NewConnectionError: <urllib3.connection.HTTPConnection object at 0x7f6f2c3ad400>: Failed to                                                           establish a new connection: [Errno -2] Name or service not known

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/local/lib/python3.5/dist-packages/requests/adapters.py", line 449, in send
    timeout=timeout
  File "/usr/local/lib/python3.5/dist-packages/urllib3/connectionpool.py", line 727, in urlopen
    method, url, error=e, _pool=self, _stacktrace=sys.exc_info()[2]
  File "/usr/local/lib/python3.5/dist-packages/urllib3/util/retry.py", line 439, in increment
    raise MaxRetryError(_pool, url, error or ResponseError(cause))
urllib3.exceptions.MaxRetryError: HTTPConnectionPool(host='%3cip%20address%3e', port=80): Max retries exceeded                                                           with url: /feedback/ (Caused by NewConnectionError('<urllib3.connection.HTTPConnection object at 0x7f6f2c3ad4                                                          00>: Failed to establish a new connection: [Errno -2] Name or service not known',))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "./run.py", line 22, in <module>
    json=fb)
  File "/usr/local/lib/python3.5/dist-packages/requests/api.py", line 119, in post
    return request('post', url, data=data, json=json, **kwargs)
  File "/usr/local/lib/python3.5/dist-packages/requests/api.py", line 61, in request
    return session.request(method=method, url=url, **kwargs)
  File "/usr/local/lib/python3.5/dist-packages/requests/sessions.py", line 530, in request
    resp = self.send(prep, **send_kwargs)
  File "/usr/local/lib/python3.5/dist-packages/requests/sessions.py", line 643, in send
    r = adapter.send(request, **kwargs)
  File "/usr/local/lib/python3.5/dist-packages/requests/adapters.py", line 516, in send
    raise ConnectionError(e, request=request)
requests.exceptions.ConnectionError: HTTPConnectionPool(host='%3cip%20address%3e', port=80): Max retries excee                                                          ded with url: /feedback/ (Caused by NewConnectionError('<urllib3.connection.HTTPConnection object at 0x7f6f2c3                                                          ad400>: Failed to establish a new connection: [Errno -2] Name or service not known',))
student-0000000@corpweb:~$ nano run.py
student-0000000@corpweb:~$ ./run.py
{'name': 'Tom', 'feedback': "I've being look around for a second handed Lexus RX for my family and this store                                                           happened to have a few of those. The experience was similar to most car dealers. The one I ended up buying has                                                           good condition and low mileage. I am pretty satisfied with the price they offered.", 'date': '2019-06-05', 't                                                          itle': 'You will find what you want here'}
{'name': 'Anonymous', 'feedback': "I came in around 6pm and they seemed about to close the store. One of the s                                                          ales seemed not being patient with me and made me feel like I have to either buy a car or come back later. Of                                                           course I didn't buy a car there. Hopefully they can treat every customer with more patience.", 'date': '2018-0                                                          9-21', 'title': 'Waste of my time'}
{'name': 'Katie', 'feedback': "My friend recommended this place and  I decided to give a try. I called them be                                                          forehand and made sure they have the models I was looking for. They evenly sent me a bunch of photos and specs                                                           of the car I was looking for. One the day I visited, the sales person John helped me with test drive and show                                                          ed me what I should be aware of when buying a used car. I felt like I learned a lot. They made the process so                                                           smooth that I saved a lot of time. It's the best car purchasing experience I had so far!", 'date': '2019-12-09                                                          ', 'title': 'Best experience so far'}
{'name': 'John', 'feedback': 'The customer service here is very good. They helped me find a 2017 Camry with go                                                          od condition in reasonable price. Campared to other dealers, they provided the lowest price. Definttely recomm                                                          end!', 'date': '2017-12-21', 'title': 'Great Customer Service'}
{'name': 'Anonymous', 'feedback': 'Called them to look for a second-hand RAV4 and they are very nice and patie                                                          nce to help me find me a few matches then scheduled an appointmet with me. Came in and they had everything rea                                                          dy for me. I was surprised how professional those sales are and they explained and answered all my questions.                                                           Ended up buying the car and been using it for more than a month now. Everything looks good!', 'date': '2018-04                                                          -17', 'title': 'Good deal for a 2015 RAV4'}
b'{"name": "Anonymous", "feedback": "Called them to look for a second-hand RAV4 and they are very nice and pat                                                          ience to help me find me a few matches then scheduled an appointmet with me. Came in and they had everything r                                                          eady for me. I was surprised how professional those sales are and they explained and answered all my questions                                                          . Ended up buying the car and been using it for more than a month now. Everything looks good!", "date": "2018-                                                          04-17", "title": "Good deal for a 2015 RAV4"}'
201
student-0000000@corpweb:~$ cat run.py
#! /usr/bin/env python3

import os
import requests

# Path to the data
path = "/data/feedback/"

keys = ["title", "name", "date", "feedback"]

folder = os.listdir(path)
for file in folder:
    keycount = 0
    fb = {}
    with open(path + file) as fl:
        for line in fl:
            value = line.strip()
            fb[keys[keycount]] = value
            keycount += 1
    print(fb)
    response = requests.post("http://34.121.181.10/feedback/",
    json=fb)
print(response.request.body)
print(response.status_code)
