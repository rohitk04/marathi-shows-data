from convert import convert_to_csv, convert_to_json
from main_functions import get_week
from process import process
from data.paths.paths import paths
from data.choices.choices import choices

print ("Select: ")

for key, value in choices.items():
    print (str(key) + ". " + value)
print ()

ch = int(input("Enter choice: "))

if ch in [1,2,3,4,5]:
    week = get_week()
    convert_to_json(ch, week)
    process(ch, paths[ch]["backup_json"], paths[ch]["data_json"])
    convert_to_csv(ch)
else:
    print ('Invalid Choice')