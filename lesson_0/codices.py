#/usr/bin/env python3

import sys
from ieee754 import IEEE754
from pprint import pprint

def binary_representation(fnum):
    a = IEEE754(fnum,1)
    print(a)
    pprint(a.json( ))

if __name__ == "__main__":
    a = sys.argv[1]
    try:
        if "." in a:
            f = float(a)
            binary_representation(f)
        else:
            if a.isdigit( ):
                i = int(a)
                print(bin(i))
            else:
                numbers = [ord(x) for x in a]
                print(" ".join([str(x) for x in numbers]))
                print(" ".join([str(bin(x)) for x in numbers]))
    except:
        print('Prints binary representation of a number.')
        print('Usage: '+sys.argv[0]+' number [float or int]')
