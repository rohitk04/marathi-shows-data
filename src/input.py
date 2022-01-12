import json
import pandas as pd

def load_data(choice):
    if choice == "TV":
        data = json.load(open('data/json/shows/shows.json'))
        trp = json.load(open('data/json/shows/tv/tv_trp.json'))
    elif choice == "Online":
        data = json.load(open('data/json/shows/shows.json'))
        trp = json.load(open('data/json/shows/online/online_trp.json'))
    elif choice == 'Channel':
        data = json.load(open('data/json/channels/channels.json'))
        trp = json.load(open('data/json/channels/channels_grp.json'))
    else:
        raise RuntimeError("Wrong Choice")

    week = list(trp.keys())[0]
    return data, trp, week

def load_shows():
    return json.load(open('data/json/shows/shows.json'))

def load_channels():
    return json.load(open('data/json/channels/channels.json'))

def read_csv(path, col_name, style=False):
    df = pd.read_csv(path).set_index(col_name).sort_index()
    if style:
        df= df.style.format("{:.2f}")
    return df