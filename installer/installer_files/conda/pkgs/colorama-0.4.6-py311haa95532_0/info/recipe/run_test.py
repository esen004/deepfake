#!/usr/bin/python
import sys
import colorama
from colorama import init, Fore, Back, Style


init(autoreset=True)

#Print text using background and font colors
print(Back.RED + Fore.BLUE + "Testing red background and blue foreground")

#Print text using background color and DIM style
print(Back.YELLOW + Style.DIM + 'Testing yellow background', end='')
#Reset all style
print(Style.RESET_ALL)
#Print text using background color
print(Back.GREEN + "Testing green background")
#Print text using font color and BRIGHT style
print(Fore.RED + Style.BRIGHT + 'Bright Text', end='')
#Print reset all style again
print(Style.RESET_ALL)
#Print text without any color and normal style
print(Style.NORMAL + 'Normal Text')


# Fore, Back and Style are convenience classes for the constant ANSI strings that set
#     the foreground, background and style. The don't have any magic of their own.
FORES = [ Fore.BLACK, Fore.RED, Fore.GREEN, Fore.YELLOW, Fore.BLUE, Fore.MAGENTA, Fore.CYAN, Fore.WHITE ]
BACKS = [ Back.BLACK, Back.RED, Back.GREEN, Back.YELLOW, Back.BLUE, Back.MAGENTA, Back.CYAN, Back.WHITE ]
STYLES = [ Style.DIM, Style.NORMAL, Style.BRIGHT ]

NAMES = {
    Fore.BLACK: 'black', Fore.RED: 'red', Fore.GREEN: 'green', Fore.YELLOW: 'yellow', Fore.BLUE: 'blue', Fore.MAGENTA: 'magenta', Fore.CYAN: 'cyan', Fore.WHITE: 'white'
    , Fore.RESET: 'reset',
    Back.BLACK: 'black', Back.RED: 'red', Back.GREEN: 'green', Back.YELLOW: 'yellow', Back.BLUE: 'blue', Back.MAGENTA: 'magenta', Back.CYAN: 'cyan', Back.WHITE: 'white',
    Back.RESET: 'reset'
}

# show the color names
sys.stdout.write('        ')
for foreground in FORES:
    sys.stdout.write('%s%-7s' % (foreground, NAMES[foreground]))
print()

# make a row for each background color
for background in BACKS:
    sys.stdout.write('%s%-7s%s %s' % (background, NAMES[background], Back.RESET, background))
    # make a column for each foreground color
    for foreground in FORES:
        sys.stdout.write(foreground)
        # show dim, normal bright
        for brightness in STYLES:
            sys.stdout.write('%sx ' % brightness)
        sys.stdout.write(Style.RESET_ALL + ' ' + background)
    print(Style.RESET_ALL)

print()

print(Fore.GREEN + 'green, '
    + Fore.RED + 'red, '
    + Fore.RESET + 'normal, '
    , end='')
print(Back.GREEN + 'green, '
    + Back.RED + 'red, '
    + Back.RESET + 'normal, '
    , end='')
print(Style.DIM + 'dim, '
    + Style.BRIGHT + 'bright, '
    + Style.NORMAL + 'normal'
    , end=' ')
print()