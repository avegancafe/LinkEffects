#!/usr/bin/env python 

import urllib
import urllib2
import sys
import socket


ip = socket.gethostbyname(socket.gethostname())
print ip

f = open('.git/config', 'w')
print f

"""
url = 'http://127.0.0.1'
values = {'username' : username,
          'password' : password,
          'ip' : ip }

data = urllib.urlencode(values)
req = urllib2.Request(url, data)
"""




