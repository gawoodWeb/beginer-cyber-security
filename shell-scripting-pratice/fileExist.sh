if [ ! -d "./doc" ] ; then
    mkdir "doc"
fi

if [ ! -a "text.txt" ] ; then
    touch "text.txt"
    echo "Message added" >> "text.txt"
fi



