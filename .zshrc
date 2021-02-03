# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13         

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /home/ntl2000/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# R=$(($RANDOM%3))
# case $R in
#     0)
# 		cowsay "Type some awesome commands !" | lolcat
# 		;;
# 	1)
# 		cowsay "How you're going ?" | lolcat
# 		;;
# 	2)
# 		cowsay "Oh hi there" | lolcat
# 		;;
# 	3)
# 		cowsay "You're back !!" | lolcat
# 		;;
# esac

shell=$(basename $SHELL)
kernel="$(uname -r | cut -d '-' -f1)"
wmname="$(xprop -id $(xprop -root -notype | awk '$1=="_NET_SUPPORTING_WM_CHECK:"{print $5}') -notype -f _NET_WM_NAME 8t | grep "WM_NAME" | cut -f2 -d \")"


#                __.......__
#             .-:::::::::::::-.
#           .:::''':::::::''':::.
#         .:::'     ':::'     ':::.
#    .'\  ::'        ':'        '::  /'.
#   :   \ ::                     :: /   :
#  :     \':    ___       ___    :'/     :
# :       /\    ( •)\   /( •)    /\       :
# :      / .\    ‾‾  | |  ‾‾    /. \      :
# :      \ (         (_)         ) /      :
#  :      '_(                   )_'      :
#   '.       \    < _____ >    /       .'
#     '.      \     \   /     /      .'
#       '._    '-._       _.-'    _.'
#        .''-.__ .''-._.-''. __.-''.
#      .'       '.         .'       '.
#    .'           '-.   .-'           '.

a=$'[1;34m'        # PURPLE
r=$'[1;31m'        # RED
w=$'[1;39m'        # WHITE
g=$'[1;35m'        # MAGENTA
t=$'[01;49;32m'    # GREEN
m=$'[m'            # NORMAL
tput clear
cat << EOF
  $a               __.......__
              .-:::::::::::::-.
            .:::''':::::::''':::.
          .:::'     ':::'     ':::.$m
     $g.'\  $a::'$m        $a':'$m        $a'::$g  /'.$m
    $g:   \ $a::$m                     $a::$g /   :$m
   $g:     \'$a:$m    ___       ___    $a:$g'/     :
  :$w       /\    ( •)\   /$w( •)$w    /\       $g:
  :$w      / .\    ‾‾  | |  ‾‾    /. \      $g:
  :$w      \ (         (_)         ) /      $g:
   :$w      '_(                   )_'      $g:
    '.$w       \    < _____ >    /       $g.'
      '.$w      \     $r\   /$g     $w/      $g.'
        '._$w    '-._       _.-'   $g _.'
  $t       .''-.__$w .''-._.-''.$t __.-''.
       .'       '.         .'       '.
     .'           '-.   .-'           '. $m
                                  
EOF


# fonts : https://github.com/xero/figlet-fonts

alias afetch= '/bin/bash /home/ntl870/afetch/afetch'
alias c='clear'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_MODE="nerdfont-complete"
typeset -g POWERLEVEL9K_VCS_UNSTAGED_ICON="\uf059"
typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON="\uf059"

