alias mv='mv -i'
alias be="bundle exec"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
#alias dash="cd /Users/jkahne/projects/ss;watch -n7 bundle exec bin/ss dashboard"
alias dash="cd /Users/jkahne/projects/tcli;watch -n5 ./tcli.rb dash"
alias rt="ctags -R *"

alias tml="tmux list-sessions"
alias tma="tmux -2 attach -t $1"
alias tmk="tmux kill-session -t $1"

alias short_prompt="export PS1='$ '"

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
alias l="ls -AFG"
alias lsa='ls -lah'
alias lh='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
# usage:  > long_command & badge
alias badge="tput bel"


# ruby
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"
alias rshare="ruby -rubygems -e \"['thin', 'rack', 'socket'].each {|file| require file };"\
" Thin::Server.start(IPSocket.getaddress(Socket.gethostname), 7777) {"\
" use Rack::CommonLogger; run Rack::Directory.new(Dir.pwd) }\""
alias duo='du -sh $(du -s * | sort -k1n | ruby -nae '\''puts '\$'F[1..-1].join("?")'\'')'


# Pipe my public key to my clipboard. Fuck you, pay me.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
