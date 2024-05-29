#!/usr/bin/zsh



 COMAND=$(cat  ~/task |
      tr -t "0123456789 " "@|&*#/:;()_" |
      cat -n | grep -w $1 #|
      #tr -d "[:digit:]" |
      #tr -d "\t"  | tr -d " " |
      #tr -t "@|&*#/:;()_" "0123456789 " 
     )

echo "$COMAND"

