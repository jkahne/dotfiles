export SHELL=/opt/homebrew/bin/zsh
export EDITOR=nvim
export HERE=$HOME/.dotfiles
export ASDF_DIR=$HOME/.asdf

# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# If you need to use these commands (from coreutils) with their normal
# names, you can add a "gnubin" directory to your PATH with:
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export PATH="$PATH:/Users/jkahne/.kit/bin"

## My own scripts
export PATH="$HOME/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

# For compilers to find libxslt you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/libxslt/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libxslt/include"


# export KERL_CONFIGURE_OPTIONS="--without-javac --with-ssl=$(brew --prefix openssl@1.1)"
export KERL_BUILD_DOCS="yes"
export ERL_AFLAGS="-kernel shell_history enabled"
export KERL_CONFIGURE_OPTIONS="
      --disable-debug \
      --disable-silent-rules \
      --enable-dynamic-ssl-lib \
      --disable-hipe \
      --enable-shared-zlib \
      --enable-smp-support \
      --enable-threads \
      --enable-wx \
      --with-ssl=$(brew --prefix openssl@1.1) \
      --without-javac
      --enable-darwin-64bit \
      --enable-kernel-poll \
      --with-dynamic-trace=dtrace \
      "

# . /opt/homebrew/opt/asdf/libexec/asdf.sh
. $HOME/.asdf/asdf.sh

# append completions to fpath
# fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
# autoload -Uz compinit && compinit


# Completions
unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on succesive tab press
setopt complete_in_word
setopt always_to_end

if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  # autoload -Uz compinit
  # compinit
fi

fpath=(${ASDF_DIR}/completions $fpath)

autoload -Uz compinit && compinit


### case-insensitive (all),partial-word and then substring completion
if [ "x$CASE_SENSITIVE" = "xtrue" ]; then
  zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  unset CASE_SENSITIVE
else
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  # zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
fi





# Config
export CLICOLOR=1

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

# don't expand aliases _before_ completion has finished
# #   like: git comm-[tab]
setopt complete_aliases

zle -N newtab




# History
HISTSIZE=50000000
SAVEHIST=50000000
HISTFILE=~/.zsh_history

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data


# FZF
export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --border  --preview '([[ -f {} ]] && (bat  --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'"
export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden --follow  -g '!node_modules' -g '!deps' -g '!_build' -g '!.elixir_ls' -g '!.beam' -g '!tmp' -g '!coverage' -g '!vendor' -g '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


# links
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
[ -f $HERE/aliases.zsh ] && source $HERE/aliases.zsh
[ -f $HERE/prompt.zsh ] && source $HERE/prompt.zsh
[ -f $HERE/key-bindings.zsh ] && source $HERE/key-bindings.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

function ghpr() {
  GH_FORCE_TTY=100% gh pr list | fzf --ansi --preview 'GH_FORCE_TTY=100% gh pr view {1}' --preview-window=down --header-lines=3 | awk '{print $1}' | xargs gh pr checkout
}

function fixbundle {
  docker exec -it $(basename $(pwd)) bash -c 'eval $(envkey-source) && bundle install'
}





###-begin-envkey-completions-###
#
# yargs command completion script
#
# Installation: usr/local/bin/envkey completion >> ~/.zshrc
#    or usr/local/bin/envkey completion >> ~/.zsh_profile on OSX.
#
_envkey_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" usr/local/bin/envkey --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _envkey_yargs_completions envkey
###-end-envkey-completions-###


