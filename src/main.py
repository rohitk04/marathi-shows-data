from convert import convert
from process import process

print ("Select: ")
print ("1. TV Shows - TV TRP")
print ("2. Mahaepisodes")
print ("3. TV Shows - Online TRP")
print ("4. Channels")
print ()

ch = int(input("Enter choice: "))

if (ch==1):
    process("TV", 'data/json/shows/shows_backup.json', 'data/json/shows/shows.json', 'shows')
    convert ("TV")
elif (ch==2):
    process("Mahaepisode", 'data/json/shows/mahaepisode/mahaepisodes_backup.json', 'data/json/shows/mahaepisode/mahaepisodes.json', 'shows')
    convert("Mahaepisode")
elif (ch==3):
    process("Online", 'data/json/shows/shows_backup.json', 'data/json/shows/shows.json', 'shows')
    convert ("Online")
elif (ch==4):
    process("Channel", 'data/json/channels/channels_backup.json', 'data/json/channels/channels.json', 'channels')
    convert ("Channel")
else:
    print ('Invalid Choice')