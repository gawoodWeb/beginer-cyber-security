#!/usr/bin/zsh

echo "My name is : $1"
VAAL="$1"
function REM_TASK  (){
  $(cat  ~/task-manager/.task |
      tr -t "0123456789 " "@|&*#/:;()_"  |
      cat -n | grep -wv $VAAL |
      tr -d "[:digit:]" |
      tr -d "\t"  | tr -d " " |
      tr -t "@|&*#/:;()_" "0123456789 " > ~/task-manager/.stream)
  $(cat ~/task-manager/.stream > ~/task-manager/.task)
}

function D_O (){

   for I in $(seq $2 $3); do
     $(cat  ~/task |                                                tr -t "0123456789 " "@|&*#/:;()_"  |
      cat -n | grep -wv $I |
      tr -d "[:digit:]" |
      tr -d "\t"  | tr -d " " |
      tr -t "@|&*#/:;()_" "0123456789 " > ~/go) 
    
      $(cat ~/go > ~/task)
   done 
}



if [[ -e ~/task-manager/.task ]]; then
  

  if [[ $1 = "-r" ]]; then
     echo "different..."
     if [[ $2 != "" && $3 != "" && $2 < $3 ]]; then
        echo "Good syntax"

        for I in $(seq $2 $3); do
	     VARI=$(cat  ~/task-manager/.task | grep -n )
#                tr -t "0123456789 " "@|&*#/:;()_"  )
#	         cat -n | grep -wv $I |
#	         tr -d "[:digit:]" |
#	         tr -d "\t"  | tr -d " " |
#	         tr -t "@|&*#/:;()_" "0123456789 " >
#		 ~/task-manager/.stream);
#
#                $(cat ~/task-manager/.stream > ~/task-manager/.task)
                 echo "Deleting $I"
		echo "VAR: $VARI"
   	done

     else
         echo "Syntaxt is : remtask -r (start index) 2 (end) 7 "
     fi


  else
	   REM_TASK
  fi
fi

