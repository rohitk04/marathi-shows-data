import json
import pandas as pd

def load_data(choice):
    if choice == "TV":
        data = json.load(open('data/json/shows/shows.json'))
        trp = json.load(open('data/json/shows/tv/tv_trp.json'))
        week = list(trp.keys())[0]
        return data, trp, week
    elif choice == "Online":
        data = json.load(open('data/json/shows/shows.json'))
        trp = json.load(open('data/json/shows/online/online_trp.json'))
        week = list(trp.keys())[0]
        return data, trp, week
    elif choice == 'Channel':
        data = json.load(open('data/json/channels/channels.json'))
        trp = json.load(open('data/json/channels/channels_grp.json'))
        week = list(trp.keys())[0]
        return data, trp, week
    elif choice == "Mahaepisode":
        show_data = json.load(open('data/json/shows/shows.json'))
        data = json.load(open('data/json/shows/mahaepisode/mahaepisodes.json'))
        trp = json.load(open('data/json/shows/mahaepisode/mahaepisode_trp.json'))
        week = list(trp.keys())[0]
        return show_data, data, trp, week
    elif choice == "2 Hour Special Episode":
        show_data = json.load(open('data/json/shows/shows.json'))
        data = json.load(open('data/json/shows/2_hours_special_episode/2_hours_special_episodes.json'))
        trp = json.load(open('data/json/shows/2_hours_special_episode/2_hours_special_episode_trp.json'))
        week = list(trp.keys())[0]
        return show_data, data, trp, week
    else:
        raise RuntimeError("Wrong Choice")

def load_shows(path):
    return json.load(open(path))

def load_channels():
    return json.load(open('data/json/channels/channels.json'))

def read_csv(path, col_name):
    return pd.read_csv(path).set_index(col_name).sort_index()