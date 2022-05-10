#!/bin/sh

#  appleScript.sh
#  ShellScripts
#
#  Created by Aleksandar Filipov on 5/10/22.
#  

tell application "Google Chrome" to activate

tell application "System Events"
    
    key code 37 using command down
    delay 0.5
    keystroke "https://www.instagram.com/instagram/"
    delay 3
    key code 36
    delay 3
    key code 3 using command down
    delay 3
    keystroke "followers"
    delay 0.5
    key code 36
    delay 0.5
    key code 53
    delay 0.5
    key code 36
    repeat 5 times
        key code 48
        delay 0.5
    end repeat
    key code 49
    delay 0.5
    
end tell

echo End
