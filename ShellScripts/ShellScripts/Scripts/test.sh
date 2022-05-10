#!/bin/sh

#  test.sh
#  
#
#  Created by Aleksandar Filipov on 5/9/22.
#

#mkdir "/tmp/My Folder"
#FILENAME="/tmp/My Folder"
#ls "$FILENAME"
## error
#ls $FILENAME

MYSTRING="The word of the day is \"sedentary\"."
echo "$MYSTRING"

FIRST_ARGUMENT="$1"
echo "Hello, world $FIRST_ARGUMENT!"

osascript -e 'tell app "Finder" to make new Finder window'

cd /Users/aleksandarfilipov/Library/Mobile\ Documents/com~apple~ScriptEditor2/Documents

#osascript tutorialExample.scpt



osascript -e 'tell app "Finder" to make new Finder window'

echo End
