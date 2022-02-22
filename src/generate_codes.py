import json
import pandas as pd

from output import store_into_json

df = pd.DataFrame(columns=['Hashtag','Code'])

with open('data/trp.txt') as f:
    lines = f.readlines()

num = 1

for line in lines:
    words = line.split('-')
    show = words[0].replace(' ','').strip()
    new_line = str(num) + ". #" + show + ' - '
    print (new_line)
    num = num + 1
