alias mv='mv -i'
alias l="exa -la"

alias b="bundle"
alias bi="bundle config set path 'vendor' && bundle install"
alias bil="bi --local"
alias bu="b update"
alias be="bundle exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

alias al="vim ~/.dotfiles/zsh/aliases.zsh"
alias d="cd ~/.dotfiles && vim ~/.dotfiles/vim/vimrc.symlink"
alias gratitude='vim ~/Dropbox/n/notes/gratitude.md'
alias notes="cd ~/Dropbox/n/notes ; vim ."
alias om="overmind start -f Procfile.dev"
alias onboard='vim ~/Dropbox/n/notes/onboarding.md'
alias postmaster="brew services stop postgres; cd /usr/local/var/postgres; rm postmaster.pid; cd -; brew services start postgres;"
alias retro='vim ~/Dropbox/n/notes/retro.md'
alias so='source ~/.dotfiles/zsh/aliases'
alias squash='git rebase -i master'
alias sync='git add -u . && git commit -m "Minor changes. Commit message skipped." && git pull --rebase && git push'
alias start='vim ~/Dropbox/n/notes/day-start-checklist.md'
alias pn='vim ~/Dropbox/n/notes/project-notes.md'
alias format='be standardrb --fix; npm run pretty;'

# alias st="tag --add starred ."
# alias un="tag --add up next ."
# alias starred="tag -f starred"
# alias upnext="tag -f 'up next'"
# alias gun='cd $(tag -f "up next" | fzf)'
# alias gst='cd $(tag -f starred | fzf)'
# alias vv='cd ~/.dotfiles && vim ./vim/vimrc.symlink'

# # alias gco="git branch | fzf | sed 's/\* //g' | xargs -I '{}' git checkout {}"
# alias gco='git checkout $(git branch | fzf)'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias rt='ctags -R --exclude=node_modules --exclude=.svn --exclude=.git --exclude=log --exclude=tmp *'

alias short_prompt="export PS1='$ '"

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
# alias l="ls -AFG"
# alias lsa='ls -lah'
# alias lh='ls -lah'
# alias ll='ls -lh'
# alias la='ls -lAh'

alias fix="git diff --name-only | uniq | xargs vim"

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
