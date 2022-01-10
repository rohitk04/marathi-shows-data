import json

def load_data(choice):
    shows = json.load(open('shows.json'))

    if choice == "TV":
        trp = json.load(open('tv_trp.json'))
    elif choice == "Online":
        trp = json.load(open('online_trp.json'))
    else:
        raise Exception("Wrong Choice")

    week = list(trp.keys())[0]
    return shows, trp, week

def load_shows():
    return json.load(open('shows.json'))