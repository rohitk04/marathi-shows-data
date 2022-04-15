from basic_convert import basic_convert
from negative_convert import negative_convert
from trial_and_error import trial_and_error

print ("\nConversion of TVR to TRP begins...")

res, reading_slice = basic_convert()

if (res == 'Y'):
    trial_and_error(reading_slice)

    print ('-'.center(110,'-'))      
    print ()      
    print ('Processing Slice Value is the value which will give best result for negative value conversion'.center(110,' '))
    print ('For knowing which result is best, compare TRP.csv with Result_TRP.csv'.center(110,' '))
    print ('Processing Slice Value is obtained from trial and error'.center(110,' '))
    print ()      
    print ('-'.center(110,'-'))         
    
    negative_convert()

print ("Conversion of TVR to TRP ends...\n")
print ('-'.center(110,'-'))