from convert import convert
from process import process

print ("Select: ")
print ("1. TV Shows - TV TRP")
print ("2. TV Shows - Online TRP")
print ("3. Channels")
print ()

ch = int(input("Enter choice: "))

if (ch==1):
    process("TV", 'data/json/shows/shows2.json', 'data/json/shows/shows.json', 'shows')
    convert ("TV")
elif (ch==2):
    process("Online", 'data/json/shows/shows2.json', 'data/json/shows/shows.json', 'shows')
    convert ("Online")
elif (ch==3):
    process("Channel", 'data/json/channels/channels2.json', 'data/json/channels/channels.json', 'channels')
    convert ("Channel")
else:
    print ('Invalid Choice')