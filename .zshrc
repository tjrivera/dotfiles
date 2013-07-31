# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mrtazz"

for file in ~/.{exports,aliases,functions,extra,chop}; do
    [ -r "$file" ] && source "$file"
done
unset file

cbmi_clone() {
    git clone git@github.research.chop.edu:cbmi/"$1".git
}
server(){
    local port="${1:-8000}"
    open "http://localhost:${port}/"
    python -m SimpleHTTPServer "$port"
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git scala sublime supervisor vagrant web-search)

source $ZSH/oh-my-zsh.sh

## Path Stuff

# Oracle Nonsense

ORACLE_HOME="/oracle/product/11.2.0/instantclient"
export ORACLE_HOME

DYLD_LIBRARY_PATH="$ORACLE_HOME"
export DYLD_LIBRARY_PATH

SQLPATH="$ORACLE_HOME"
export SQLPATH
export CLASSPATH=$HOME/lib
export PATH="$PATH:$ORACLEH_HOME"

export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh
export GOPATH=$HOME/go
export GPGKEY=$HOME/.gpg
export PATH=/usr/local/bin:/usr/bin:/Applications/Postgres.app/Contents/MacOS/bin:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
