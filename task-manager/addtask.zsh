#!/usr/bin/zsh

echo "My name is : $0"


if [[ -e ~/task-manager/.task ]]; then
  echo "Sure i will : $1 , $2 , $3"

  $(echo "$1" >> ~/task-manager/.task)

fi
