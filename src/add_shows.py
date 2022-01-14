import json

from output import store_into_json

def get_value(dictionary, msg1, msg2):
    print ()
    print (msg1 + " Choices: ")

    for key,choice in dictionary.items():
        print (str(key)+". "+choice)

    choice = int(input("Enter "+msg2+": "))
    return dictionary.get(choice)
        
def add_show(show):
    channel_choices = {1:'Star Pravah', 2:'Zee Marathi', 3:'Colors Marathi'}
    type_choices = {1:'Fiction', 2:'Non-Fiction', 3:'Event'}
    time_choices={1:'18:00', 2:'18:30',3:'19:00',4:'19:30',5:'20:00',6:'20:30',7:'21:00',8:'21:30',9:'22:00',10:'22:30',11:'23:00'}
    platform_choices = {1:'Hotstar', 2:'Zee5', 3:'Voot'}

    show_json = json.load(open('data/json/shows/dummy_show.json'))
    show_json[show] = show_json.pop("Show_Name")

    print ('-'.center(40,'-'))
    print (show.center(40,' '))
    
    channel = get_value(channel_choices,'Channel','Channel')
    type = get_value(type_choices, 'Type','Type')
    platform = get_value(platform_choices, 'Platform','OTT Platform')

    if type != 'Event':
        time_list = []

        rep = 'y'
        while (rep=='y'):
            time_list.append(get_value(time_choices, 'Time', "Time (in 24 hrs format)"))

            rep = input("\nIs the show duration longer than half hour?\nDo you want to repeat?\nEnter answer: ")
    
    new_json = {"Platform":platform, "Time":list(set(time_list)), "Channel":channel, "Type":type}
    show_json[show].update(new_json)
    
    print ('-'.center(40,'-'))
    print ()

    return show_json

def add_shows(not_present):
    shows_json = json.load(open('data/json/shows/shows.json'))
    
    print ('\nAdding shows...\n')
    
    for show in not_present:
        shows_json[show] = add_show(show)[show]
        print (show + '\n' + str(shows_json[show]))
        
    store_into_json('data/json/shows/shows.json', shows_json)