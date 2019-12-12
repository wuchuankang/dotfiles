
alias rm='mv -f --target-directory=/home/wck/.local/trash'

alias sd='shutdown -h now'
alias cl='clear'
alias la='ls -a'
alias ll='ls -l'
alias e='exit'

function time --description="Time just like in Bash"
    command time --portability $argv
end

