from backup.backup_functions import combine, convert, dump, prepare, delete, update

def backup():
    print ("\nBackup Process begins...\n")
    
    combine()
    convert()
    prepare()
    delete()
    update()
    dump()
    
    print ("Backup Process ends...\n")
    print ('-'.center(100,'-'))


if __name__ == "__main__":
    backup()