#!/usr/bin/zsh 

if [[ ! -e ~/task-manager/.task ]]; then
  $(touch ~/task-manager/.task)
fi

alias  addtask='~/task-manager/addtask.zsh'
alias  remtask='~/task-manager/remtask.zsh'
alias  listtask='cat -n ~/task-manager/.task'
alias  runtask='~/task-manager/runtask.zsh'



