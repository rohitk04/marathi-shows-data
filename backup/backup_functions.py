import pandas as pd
import re
import os

import sys
sys.path.append('../barc')
from data.paths.paths import paths

sys.path.append('/backup')

def read_csv(path, col_name):
    return pd.read_csv(path).set_index(col_name).sort_index()

def combine():
    print ('-'.center(100,'-'))
    print ("\nCombining begins...\n")
    
    channels_grp = read_csv(paths[5]["grp_csv"], 'Channel')
    channels_rank = read_csv(paths[5]["rank_csv"], 'Channel')

    shows_info = read_csv(paths['info_csv'], 'Show')

    tv_trp_trp = read_csv(paths[1]['trp_csv'], 'Show')
    tv_trp_rank = read_csv(paths[1]['rank_csv'], 'Show')

    mahaepisodes_info = read_csv(paths[2]['info_csv'], 'Show')
    mahaepisodes_trp = read_csv(paths[2]['trp_csv'], 'Show')
    mahaepisodes_rank = read_csv(paths[2]['rank_csv'], 'Show')
    mahaepisodes_time = read_csv(paths[2]['time_csv'], 'Show')

    online_trp_trp = read_csv(paths[4]['trp_csv'],'Show')
    online_trp_rank = read_csv(paths[4]['rank_csv'], 'Show')

    special_episode_info = read_csv(paths[3]['info_csv'], 'Show')
    special_episode_trp = read_csv(paths[3]['trp_csv'], 'Show')
    special_episode_rank = read_csv(paths[3]['rank_csv'], 'Show')
    special_episode_time = read_csv(paths[3]['time_csv'], 'Show')

    channels = pd.merge(channels_grp, channels_rank, left_index=True, right_index=True, how='outer',suffixes=(' GRP',' Rank'))
    channels = channels.sort_index(axis=1)

    shows_tv = pd.merge(tv_trp_trp, tv_trp_rank, left_index=True, right_index=True, how='outer',suffixes=(' TV TRP TRP',' TV TRP Rank'))
    shows_online = pd.merge(online_trp_trp, online_trp_rank, left_index=True, right_index=True, how='outer',suffixes=(' Online TRP TRP',' Online TRP Rank'))

    shows = pd.merge(shows_tv, shows_online, left_index=True, right_index=True, how='outer')
    shows = pd.merge(shows_info, shows, left_index=True, right_index=True, how='outer')

    cols = list(shows_tv.columns)
    n = len(cols)
    sorted_cols = ['Channel', 'Platform', 'Time']
    for i in range (int(n/2)):
        sorted_cols.extend([
            'Week ' + str(i+1) + ' TV TRP TRP',
            'Week ' + str(i+1) + ' TV TRP Rank',
            'Week ' + str(i+1) + ' Online TRP TRP',
            'Week ' + str(i+1) + ' Online TRP Rank',
        ])

    sorted_cols.append('Type')

    shows = shows[sorted_cols]

    mahaepisodes = pd.merge(mahaepisodes_trp, mahaepisodes_rank, left_index=True, right_index=True, how='outer',suffixes=(' TRP',' Rank'))
    mahaepisodes = pd.merge(mahaepisodes, mahaepisodes_time.add_suffix(' Time'), left_index=True, right_index=True, how='outer')
    mahaepisodes = pd.merge(mahaepisodes, mahaepisodes_info, left_index=True, right_index=True, how='outer')

    nums = set()
    for col in mahaepisodes.columns:
        try:
            num = int(re.findall(r'\d+',col)[0])
            nums.add(num)
        except:
            pass

    sorted_cols = ['Channel', 'Platform']
    for i in nums:
        sorted_cols.extend([
            'Week ' + str(i) + ' TRP',
            'Week ' + str(i) + ' Rank',
            'Week ' + str(i) + ' Time'
        ])
    sorted_cols.append('Type')

    mahaepisodes = mahaepisodes[sorted_cols]

    special_episodes = pd.merge(special_episode_trp, special_episode_rank, left_index=True, right_index=True, how='outer',suffixes=(' TRP',' Rank'))
    special_episodes = pd.merge(special_episodes, special_episode_time.add_suffix(' Time'), left_index=True, right_index=True, how='outer')
    special_episodes = pd.merge(special_episodes, special_episode_info, left_index=True, right_index=True, how='outer')
    
    nums = set()
    for col in special_episodes.columns:
        try:
            num = int(re.findall(r'\d+',col)[0])
            nums.add(num)
        except:
            pass

    sorted_cols = ['Channel', 'Platform']
    for i in nums:
        sorted_cols.extend([
            'Week ' + str(i) + ' TRP',
            'Week ' + str(i) + ' Rank',
            'Week ' + str(i) + ' Time'
        ])
    sorted_cols.append('Type')

    special_episodes = special_episodes[sorted_cols]

    channels.to_csv(paths['backup']['channels_csv'])
    shows.to_csv(paths['backup']['shows_csv'])
    mahaepisodes.to_csv(paths['backup']['mahaepisodes_csv'])
    special_episodes.to_csv(paths['backup']['special_episodes_csv'])

    print ("Combining ends...\n")
    print ('-'.center(100,'-'))

def convert():
    print ("\nConversion begins...\n")
    
    os.system("backup\sqlite3 backup/mydatabase.db < backup/commands.txt")
    os.remove("backup/mydatabase.db")

    print ("Conversion ends...\n")
    print ('-'.center(100,'-'))

def prepare():
    print ("\nData preparation begins...\n")

    list = ['channels','mahaepisodes', 'shows', 'special_episodes']

    result = []

    for ele in list:
        with open('backup/' + ele +'.sql') as sql_file:
            text = sql_file.read()

        text = text.replace("GRP\" TEXT","GRP\" REAL")
        text = text.replace("Rank\" TEXT","Rank\" INTEGER")
        text = text.replace("VALUES(","VALUES(DEFAULT,")
        text = text.replace("''","NULL")
        text = text.replace("[NULL","[''")
        text = text.replace("NULL]","'']")
        text = text.replace("NULL, NULL","'', ''")
        text = text.replace(".0'","'")
        text = text.replace(" IF NOT EXISTS "," ")

        arr = text.splitlines()
        del arr[0]
        arr.insert(1,"DROP TABLE IF EXISTS \"" + ele +"\";")
        
        ele = ele.replace("_"," ").title()
        arr.insert(3,"\"" + ele[:-1] +" Id\" SMALLSERIAL PRIMARY KEY,")

        text = '\n'.join(arr)
        
        result.append(text)

        sql_file.close()
        
    with open(paths["backup"]["output"],"w") as sql_file:
        sql_file.write('\n\n'.join(result))
    
    print ("Data preparation ends...\n")
    print ('-'.center(100,'-'))

def delete():
    print ("\nDeletion begins...\n")

    list = ['channels','mahaepisodes', 'shows', 'special_episodes']

    for ele in list:
        os.remove('backup/' + ele + '.csv')
        os.remove('backup/' + ele + '.sql')
    
    print ("Deletion ends...\n")
    print ('-'.center(100,'-'))

def update():
    print ("\nData Updation begins...\n")

    line = 'psql -U "postgres" -d "barc_database" -w -f ' + paths['backup']['output'] + ' -q'
    os.system(line)
    os.remove(paths['backup']['output'])

    print ("Database Updation ends...\n")
    print ('-'.center(100,'-'))

def dump():
    print ("\nDatabase Backup begins...\n")

    os.remove(paths['backup']['backup'])
    
    line = 'pg_dump -U "postgres" "barc_database" >> ' + paths['backup']['backup']
    os.system(line)

    print ("Database Backup ends...\n")
    print ('-'.center(100,'-'))