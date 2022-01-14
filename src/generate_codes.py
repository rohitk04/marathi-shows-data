import json
import pandas as pd

from output import store_into_json

df = pd.DataFrame(columns=['Hashtag','Code'])
codes = json.load(open('data/json/shows/codes.json'))

with open('data/trp.txt') as f:
    lines = f.readlines()

dictionary = {}

for line in lines:
    words = line.split(" ")
    if words[1] not in codes.keys():
        code = ''.join(' '+char if char.isdigit() or char.isupper() else char.strip() for char in words[1].lstrip('#')).strip()
        dictionary[words[1]] = code

codes.update(dictionary)
store_into_json('data/json/shows/codes.json', codes)