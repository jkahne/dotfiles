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

# export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

## My own scripts
export PATH="$HOME/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

export KERL_BUILD_DOCS="yes"
export ERL_AFLAGS="-kernel shell_history enabled"
export CC="/usr/bin/clang -I$(brew --prefix unixodbc)/include"
export LDFLAGS=-L$(brew --prefix unixodbc)/lib
export CPPFLAGS=-L$(brew --prefix unixodbc)/include

# https://elixirforum.com/t/bus-error-after-upgrading-to-sonoma-beta/56354/40?page=2
export KERL_CONFIGURE_OPTIONS="
      --disable-debug \
      --disable-silent-rules  \
      --without-javac  \
      --enable-shared-zlib  \
      --enable-dynamic-ssl-lib  \
      --enable-threads  \
      --enable-kernel-poll  \
      --with-odbc=$(brew --prefix unixodbc) \
      --without-wx  \
      --enable-webview  \
      --enable-darwin-64bit  \
      --enable-gettimeofday-as-os-system-time  \
      --with-ssl=$(brew --prefix openssl@3) \
      --disable-jit \
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
# havn't used these
# function f() { find . -iname "*$1*" ${@:2} }
# function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

function ghpr() {
  GH_FORCE_TTY=100% gh pr list | fzf --ansi --preview 'GH_FORCE_TTY=100% gh pr view {1}' --preview-window=down --header-lines=3 | awk '{print $1}' | xargs gh pr checkout
}

# obsidian://open?vault=Brain&file=git%20log%20commit%20counting%20script%20agile%20otter%20tim%20ottinger
function gitcc() {
  git log --since 2.years.ago --numstat |
  awk '/^[0-9-]+/{ print $NF }' |
  grep -v 'schema.rb\|Gemfile.lock\|config/locales/en.yml' |
  sort |
  uniq -c |
  sort -nr |
  head
}

# fancy-ctrl-z () {
#   if [[ $#BUFFER -eq 0 ]]; then
#     BUFFER="fg"
#     zle accept-line -w
#   else
#     zle push-input -w
#     zle clear-screen -w
#   fi
# }
# zle -N fancy-ctrl-z
# bindkey '^Z' fancy-ctrl-z


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jkahne/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jkahne/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jkahne/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jkahne/google-cloud-sdk/completion.zsh.inc'; fi

# pnpm
export PNPM_HOME="/Users/jkahne/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
