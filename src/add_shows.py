import json

from output import store_into_json
        
def add_show(show):
    channel_choices = {1:'Star Pravah', 2:'Zee Marathi', 3:'Colors Marathi'}
    type_choices = {1:'Fiction', 2:'Non-Fiction', 3:'Event'}
    time_choices={1:'18:00', 2:'18:30',3:'19:00',4:'19:30',5:'20:00',6:'20:30',7:'21:00',8:'21:30',9:'22:00',10:'22:30',11:'23:00'}
    platform_choices = {1:'Hotstar', 2:'Zee5', 3:'Voot'}

    show_json = json.load(open('data/json/shows/dummy_show.json'))
    show_json[show] = show_json.pop("Show_Name")

    print ('-'.center(40,'-'))
    print (show.center(40,' '))
    
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