from convert import convert_to_csv, convert_to_json
from main_functions import get_week
from process import process
from data.paths.paths import paths

print ("Select: ")
print ("1. TV Shows - TV TRP")
print ("2. Mahaepisodes")
print ("3. 2 Hour Special Episode")
print ("4. TV Shows - Online TRP")
print ("5. Channels")
print ()

ch = int(input("Enter choice: "))

if ch in [1,2,3,4]:
    week = get_week()
    convert_to_json(ch, week)
    process(ch, paths[ch]["backup_json"], paths[ch]["data_json"], 'shows')
    convert_to_csv(ch)
elif (ch==5):
    print ('-'.center(73,'-'))
    process(ch, paths[ch]['backup_json'], paths[ch]['data_json'], 'channels')
    convert_to_csv(ch)
else:
    print ('Invalid Choice')