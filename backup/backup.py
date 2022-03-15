from backup_functions import combine, convert, dump, prepare, delete, update

if __name__ == "__main__":
    print ("\nBackup Process begins...\n")
    
    combine()
    convert()
    prepare()
    delete()
    update()
    dump()
    
    print ("Backup Process ends...\n")
    print ('-'.center(73,'-'))