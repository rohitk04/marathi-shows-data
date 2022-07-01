import json
from src.output import store_into_json
from data.paths.paths import paths

def load_choices():
    from data.choices.time_choices import time_choices
    from data.choices.type_choices import type_choices
    from data.choices.channel_choices import channel_choices
    from data.choices.platform_choices import platform_choices

    return channel_choices, platform_choices, type_choices, time_choices

def add_channel(channel):
    channel_json = json.load(open(paths[5]['dummy_json']))
    channel_json[channel] = channel_json.pop("Channel_Name")
    return channel_json

def add_channels(not_present):
    channels_json = json.load(open(paths[5]['data_json']))
    
    for channel in not_present:
        channels_json[channel] = add_channel(channel)[channel]

    print ("Channels added successfully")

    store_into_json(paths[5]['data_json'], channels_json)
    return channels_json

def add_show(show, choice, show_data = None):
    if (show_data == None):
        channel_choices, platform_choices, type_choices, time_choices = load_choices()

        show_json = json.load(open(paths[choice]['dummy_json']))
        show_json[show] = show_json.pop("Show_Name")

        print ('-'.center(100,'-'))
        print (show.center(100,' '))
        
        print ()    
        print ("Channel Choices: ")
        
        for key,choice in channel_choices.items():
            print (str(key)+". "+choice)

        index = int(input("Enter choice: "))
        
        channel = channel_choices.get(index)
        
        print ()    
        print ("Type Choices: ")
        
        for key,choice in type_choices.items():
            print (str(key)+". "+choice)

        index = int(input("Enter choice: "))

        type = type_choices.get(index)
        
        time_list = []
        platform = ''

        if type != 'Movie':
            platform = platform_choices.get(index)

        if type == 'Fiction' or type == 'Non-Fiction':
            print ()    
            print ("Time Choices: ")
            
            for key,choice in time_choices.items():
                print (str(key)+". "+choice)

            rep = 'y'
            while (rep=='y'):
                choice = int(input("Enter choice: "))
                time_list.append(time_choices.get(choice))

                rep = input("\nIs the show duration longer than half hour?\nDo you want to repeat?\nEnter answer: ")

        new_json = {"Platform":platform, "Time":list(set(time_list)), "Channel":channel, "Type":type}
        
        show_json[show].update(new_json)
        
        print ('-'.center(100,'-'))
        print ()
    else:
        path = paths[choice]['dummy_json']
        show_json = json.load(open(path))
        new_json = {"Platform":show_data['Platform'], "Channel":show_data['Channel'], "Type":show_data['Type']}

        show_json[show] = show_json.pop("Show_Name")
        show_json[show].update(new_json)
        
    return show_json

def add_shows(not_present, choice, show_data = None):
    shows_json = json.load(open(paths[choice]["data_json"]))
        
    print ('\nAdding shows...\n')    

    if (show_data == None):
        for show in not_present:
            shows_json[show] = add_show(show, choice)[show]
            print (show + '\n' + str(shows_json[show]))

        store_into_json(paths[1]["data_json"], shows_json)
    else:
        for show in not_present:
            if show in show_data:
                shows_json[show] = add_show(show, choice, show_data[show])[show]
            else:
                raise RuntimeError(show  + ' not present in shows.json')
        
        print ('\nShows added successfully\n')

        store_into_json(paths[choice]['data_json'], shows_json)

    print ('-'.center(100,'-'))
    return shows_json

def get_week():
    num = int(input("Enter week no.: "))
    week = 'Week ' + str(num)

    print ()
    print ('-'.center(100,'-'))
    print ("\nEntering data for " + week + "...")
    print ()
    print ('-'.center(100,'-'))

    return week