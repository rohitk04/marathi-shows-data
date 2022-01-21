import pandas as pd
import json

def store_into_json(filename, json_object):
    with open(filename,'w') as outfile:
        json.dump(json_object, outfile, indent=4)

week = 'Week 2'

input_path = 'mahaepisode/trp.txt'
output_path = 'mahaepisode/mahaepisode_trp.json'

with open(input_path) as f:
    lines = f.readlines()

df = pd.DataFrame(columns=['Hashtag', 'Show','TRP', 'Time'])
codes = json.load(open('data/json/shows/codes.json'))

for line in lines:
    words = line.split(" ")
    print (words)
    df = df.append({
        'Hashtag':words[1].strip(),
        'Show':codes.get(words[1].strip()),
        'TRP':float(words[3]),
        'Time':words[5].strip("\n")
        }, ignore_index=True)

df['Rank'] = df['TRP'].rank(0,ascending=False,method='dense',na_option='keep').astype(int)
df = df.sort_values(by='Rank')
    
print (df)
print ()

dictionary = {}
dictionary[week] = {}
for index, row in df.iterrows():
    dictionary[week][row['Show']]={
        'TRP':row['TRP'],
        'Rank':row['Rank'],
        'Time':row['Time']
    }

ch1 = input("Do you want to continue?(Y/N): ").lower()
print ()

if (ch1 =='y'):
    store_into_json(output_path,dictionary)
    print ('Stored successfully')    