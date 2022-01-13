import pandas as pd
import json

from output import store_into_json

week = 'Week 1'

with open('data/trp.txt') as f:
    lines = f.readlines()

df = pd.DataFrame(columns=['Hashtag', 'Show','TRP'])
codes = json.load(open('data/json/shows/codes.json'))

for line in lines:
    words = line.split(" ")
    df = df.append({'Hashtag':words[1],'Show':codes.get(words[1]),'TRP':float(words[3])}, ignore_index=True)

df['Rank'] = df['TRP'].rank(0,ascending=False,method='dense',na_option='keep')
df = df.sort_values(by='Rank')
    
print (df)
print ()

dictionary = {}
dictionary[week] = {}
for index, row in df.iterrows():
    dictionary[week][row['Show']]={
        'TRP':row['TRP'],
        'Rank':row['Rank']
    }

store_into_json('data/json/shows/online/online_trp.json',dictionary)
print ('Stored successfully')    