
alias rm='mv -f --target-directory=/home/wck/.local/trash'

alias shut='shutdown -h now'
alias cl='clear'
alias la='ls -a'
alias ll='ls -l'

function time --description="Time just like in Bash"
    command time --portability $argv
end

