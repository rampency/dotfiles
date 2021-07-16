# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/home/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="sunrise"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting alias-tips nvm)

source $ZSH/oh-my-zsh.sh


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

pull() { adb  pull /mnt/sdcard/Download/$1 $HOME/downloads/ }

alias installa="adb install -r $HOME/Documents/projects/software/host2/platforms/android/app/build/outputs/apk/debug/app-debug.apk"

source ~/.bash_profile;
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


alias buildi='ionic cordova build ios'
alias builda='ionic cordova build android'

alias app='cd $HOME/Documents/projects/software/host2/'
alias firmware='cd $HOME/Documents/projects/firmware'

remove_known_hosts(){
  known_hosts=~/.ssh/known_hosts
  lines_count=$(grep -c $1 ${known_hosts})
  if [ "$lines_count" -gt 0 ]; then
    echo "Found ${lines_count} host(s):"
    echo ""
    grep $1 ${known_hosts}
    echo ""
    echo -n "Do you want to remove these hosts? [Y/n] "
    read reply
    if [ "$reply" == "Y" ]; then
      grep -F -v $1 ${known_hosts} > ${known_hosts}.tmp && mv ${known_hosts}.tmp ${known_hosts}
      echo "Those hosts were removed"
    fi
  else
    echo "No hosts matching ${1} were found."
  fi  
}

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export ANDROID_SDK_ROOT=/Users/$USER/Library/Android/sdk
alias refreshzsh='source ~/.zshrc'
alias zshplugins='cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins '
alias syncplugins='cordova-check-plugins --target=config --update=auto'

