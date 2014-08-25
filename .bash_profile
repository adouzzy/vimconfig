# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
export PATH="$HOME/.vim/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Applications/Julia.app/Contents/Resources/jull ia/bin"

alias sfs="sshfs -o reconnect -o Compression=no -o workaround=all"
alias ls="ls -G"
alias ll="ls -Ghltr"
alias ec="emacsclient"
alias skim="/Applications/Skim.app/Contents/MacOS/Skim"

export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\t \[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"
# Example aliases
# alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
. `brew --prefix`/etc/profile.d/z.sh

# Set this to use case-sensitive completion
CASE_SENSITIVE="true"
# for f in /usr/local/etc/bash_completion.d/*; do source $f; done


# #If vim compiled with clientserver
# cs=`command vim --version | grep "clientserver"`
# if [ $cs ]
# then
#     #Only use one instance of vim
#     function vim()
#     {
#         if [ $@ ]
#         then
#             command vim --servername vim --remote-silent $@
#         else
#             pss=`ps`
#             temp=`echo $pss | grep -w "vim"`
#             if [ $temp  ]
#             then
#                 echo "vim already open"
#             else
#                 command vim --servername vim
#             fi
#         fi
#     }
# else
#     command vim $@
# fi
#
#
