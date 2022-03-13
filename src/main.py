from convert import convert_to_csv, convert_to_json
from main_functions import get_week
from process import process

print ("Select: ")
print ("1. TV Shows - TV TRP")
print ("2. Mahaepisodes")
print ("3. 2 Hour Special Episode")
print ("4. TV Shows - Online TRP")
print ("5. Channels")
print ()

ch = int(input("Enter choice: "))

if (ch==1):
    week = get_week()
    convert_to_json(ch, week)
    process(ch, 'data/json/shows/shows_backup.json', 'data/json/shows/shows.json', 'shows')
    convert_to_csv (ch)
elif (ch==2):
    week = get_week()
    convert_to_json(ch, week)
    process(ch, 'data/json/shows/mahaepisode/mahaepisodes_backup.json', 'data/json/shows/mahaepisode/mahaepisodes.json', 'shows')
    convert_to_csv(ch)
elif (ch==3):
    week = get_week()
    convert_to_json(ch, week)
    process(ch, 'data/json/shows/2_hours_special_episode/2_hours_special_episode_backup.json', 'data/json/shows/2_hours_special_episode/2_hours_special_episodes.json', 'shows')
    convert_to_csv(ch)
elif (ch==4):
    week = get_week()
    convert_to_json(ch, week)
    process(ch, 'data/json/shows/shows_backup.json', 'data/json/shows/shows.json', 'shows')
    convert_to_csv(ch)
elif (ch==5):
    print ('-'.center(73,'-'))
    process(ch, 'data/json/channels/channels_backup.json', 'data/json/channels/channels.json', 'channels')
    convert_to_csv(ch)
else:
    print ('Invalid Choice')