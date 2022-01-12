import json

def load_data(choice):
    if choice == "TV":
        data = json.load(open('data/json/shows.json'))
        trp = json.load(open('data/json/tv_trp.json'))
    elif choice == "Online":
        data = json.load(open('data/json/shows.json'))
        trp = json.load(open('data/json/online_trp.json'))
    elif choice == 'Channel':
        data = json.load(open('data/json/channels.json'))
        trp = json.load(open('data/json/channel_trp.json'))
    else:
        raise RuntimeError("Wrong Choice")

    week = list(trp.keys())[0]
    return data, trp, week

def load_shows():
    return json.load(open('data/json/shows.json'))