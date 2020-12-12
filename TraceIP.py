
import os 
import urllib2
import json

while True:
    ip=raw_input ("What is your ip target IP: ")
    url = "http://ip-api.com/json/"
    response = urllib2.urlopen(url + ip)
    data = response.read()
    values = json.loads (data)

    print(" IP: " + values['query'])
    print(" City: " + values['city'])
    print("Isp: " + values['isp'])
    print("Country: " + values['country'])
    print("Region: " + values['region'])
    print("Time xone: " + values['timezone'])

    break
