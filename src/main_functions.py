import json

from output import store_into_json

def load_choices():
    import sys
    sys.path.append('../barc')

    from data.choices.time_choices import time_choices
    from data.choices.type_choices import type_choices
    from data.choices.channel_choices import channel_choices
    from data.choices.platform_choices import platform_choices

    return channel_choices, platform_choices, type_choices, time_choices

def add_channel(channel):
    channel_json = json.load(open('data/json/channels/dummy_channel.json'))
    channel_json[channel] = channel_json.pop("Channel_Name")

    print ('-'.center(73,'-'))
    
    print (channel_json)

    print ('-'.center(73,'-'))
    print ()

    return channel_json

def add_channels(not_present):
    channels_json = json.load(open('data/json/channels/channels.json'))
    
    print ('\nAdding channels...\n')
    
    for channel in not_present:
        channels_json[channel] = add_channel(channel)[channel]
    
    store_into_json('data/json/channels/channels.json', channels_json)
    return channels_json

def add_show(show, show_data = None):
    if (show_data == None):
        channel_choices, platform_choices, type_choices, time_choices = load_choices()

        show_json = json.load(open('data/json/shows/dummy_show.json'))
        show_json[show] = show_json.pop("Show_Name")

        print ('-'.center(73,'-'))
        print (show.center(73,' '))
        
        print ()    
        print ("Channel Choices: ")
        
        for key,choice in channel_choices.items():
            print (str(key)+". "+choice)

        index = int(input("Enter choice: "))
        
        channel = channel_choices.get(index)
        platform = platform_choices.get(index)
        
        print ()    
        print ("Type Choices: ")
        
        for key,choice in type_choices.items():
            print (str(key)+". "+choice)

        index = int(input("Enter choice: "))

        type = type_choices.get(index)
        
        time_list = []
        
        if type != 'Event':
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
        
        print ('-'.center(73,'-'))
        print ()
    else:
        show_json = json.load(open('data/json/shows/mahaepisode/dummy_show.json'))
        show_json[show] = show_json.pop("Show_Name")
        
        new_json = {"Platform":show_data['Platform'], "Channel":show_data['Channel'], "Type":show_data['Type']}
        show_json[show].update(new_json)

    return show_json

def add_shows(not_present, show_data = None):
    if (show_data == None):
        shows_json = json.load(open('data/json/shows/shows.json'))
        
        print ('\nAdding shows...\n')
        
        for show in not_present:
            shows_json[show] = add_show(show)[show]
            print (show + '\n' + str(shows_json[show]))
            
        store_into_json('data/json/shows/shows.json', shows_json)
    else:
        shows_json = json.load(open('data/json/shows/mahaepisode/mahaepisodes.json'))
    
        print ('\nAdding shows...\n')
        
        for show in not_present:
            if show in show_data:
                shows_json[show] = add_show(show, show_data[show])[show]
                print (show + '\n' + str(shows_json[show]))
            else:
                raise RuntimeError('Show not present in shows.json')
            
        store_into_json('data/json/shows/mahaepisode/mahaepisodes.json', shows_json)
    return shows_json

def get_week():
    num = int(input("Enter week no.: "))
    week = 'Week ' + str(num)

    print ()
    print ('-'.center(73,'-'))
    print ("\nEntering data for " + week + "...")
    print ()
    print ('-'.center(73,'-'))

    return week