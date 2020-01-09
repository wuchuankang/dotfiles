# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#命令 d 可以列出当前窗口 cd 过的路径，使用所列出路前的 数字标记 可以直接调转到该路径

alias rm='mv -f --target-directory=/home/wck/.local/trash'

alias sd='shutdown -h now'
alias cl='clear'
alias re='reboot'
alias al='ls -a'
alias e='exit'
alias md='mkdir -p'
alias lg='lazygit'

if [ -x /usr/bin/dircolors ]; then
test -r .dir_colors && eval "$(dircolors -b .dir_colors)" || eval "$(dircolors -b)"
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
fi


# git theming，关于git目录的提示符号配置
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[yellow]%}%B"
#ZSH_THEME="ys"
#ZSH_THEME="agnoster"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME=powerlevel10k/powerlevel10k

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs pyenv)
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{white}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{white}\u2570\uf460%F{white} "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time
                                    vcs background_jobs_joined time_joined)
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="white"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"

POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"

POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="red"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="white"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_OK_FOREGROUND="white"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="cyan"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='magenta'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='clear'
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='white'

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
#export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# install zplug, plugin manager for zsh, https://github.com/zplug/zplug
# curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
# zplug configruation
if [[ ! -d "${ZPLUG_HOME}" ]]; then
  if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    # If we can't get zplug, it'll be a very sobering shell experience. To at
    # least complete the sourcing of this file, we'll define an always-false
    # returning zplug function.
    if [[ $? != 0 ]]; then
      function zplug() {
        return 1
      }
    fi
  fi
  export ZPLUG_HOME=~/.zplug
fi
if [[ -d "${ZPLUG_HOME}" ]]; then
  source "${ZPLUG_HOME}/init.zsh"
fi
zplug 'plugins/git', from:oh-my-zsh, if:'which git'
zplug 'romkatv/powerlevel10k', use:powerlevel10k.zsh-theme
zplug "plugins/vi-mode", from:oh-my-zsh
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions', defer:2
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2

if ! zplug check; then
  zplug install
fi

zplug load

#修改命令的颜色
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=white
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white
ZSH_HIGHLIGHT_STYLES[arg0]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=green,bold  #通配符*的颜色

# default keymap
bindkey -v
bindkey -M vicmd "h" vi-insert
bindkey -M vicmd "H" vi-insert-bol
bindkey -M vicmd "j" vi-backward-char
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "i" down-line-or-history
bindkey -M vicmd "k" up-line-or-history
bindkey -M vicmd "w" vi-backward-word
bindkey -M vicmd "e" vi-forward-word
# w 是上一个单词， e是下一个单词，和vim保持一致

# fzf
export FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_COMPLETION_TRIGGER='f'    #使用cd f <tab> 就可以使用了， ctrl+i:向上选择，Ctrl+k 向下选择
# 使用 ctrl+f 一样能够打开 fzf, cd ctrl+t 可以实现上面一样的效果
# 在命令行下按下ctrl-f会打开fzf窗口，如果你选中某个条目并按下Enter
# 在命令行下按下ctrl-h, fzf会列出history命令，选中条目并离开fzf的话， 选中条目会被拷到命令行上
export FZF_TMUX_HEIGHT='80%'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
source ~/.config/zsh/key-bindings.zsh
source ~/.config/zsh/completion.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# NOTE: use cc to clear screen. I use tmux ctrl+hjkl switch panel, but ctrl+l conflict with clear-screen
# bindkey "cc" clear-screen

# fzf config, must brew install fzf
# NOTE: put this line in the end of your zshrc, or it may not work, https://github.com/junegunn/fzf/issues/1304
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

