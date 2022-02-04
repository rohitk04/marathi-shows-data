from convert_to_csv import convert_to_csv
from get_week import get_week
from process import process
from convert_to_json import convert_to_json

print ("Select: ")
print ("1. TV Shows - TV TRP")
print ("2. Mahaepisodes")
print ("3. TV Shows - Online TRP")
print ("4. Channels")
print ()

ch = int(input("Enter choice: "))

if (ch==1):
    week = get_week()
    convert_to_json("TV", week)
    process("TV", 'data/json/shows/shows_backup.json', 'data/json/shows/shows.json', 'shows')
    convert_to_csv ("TV")
elif (ch==2):
    week = get_week()
    convert_to_json("Mahaepisode", week)
    process("Mahaepisode", 'data/json/shows/mahaepisode/mahaepisodes_backup.json', 'data/json/shows/mahaepisode/mahaepisodes.json', 'shows')
    convert_to_csv("Mahaepisode")
elif (ch==3):
    week = get_week()
    convert_to_json("Online", week)
    process("Online", 'data/json/shows/shows_backup.json', 'data/json/shows/shows.json', 'shows')
    convert_to_csv("Online")
elif (ch==4):
    print ('-'.center(73,'-'))
    process("Channel", 'data/json/channels/channels_backup.json', 'data/json/channels/channels.json', 'channels')
    convert_to_csv("Channel")
else:
    print ('Invalid Choice')