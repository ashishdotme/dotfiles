# shortcuts
alias dockerbuild="docker-compose up -d --no-deps --build"
alias codes='cd ~/Code'
alias dotfiles='cd ~/Code/dotfiles'
alias q="cd ~ && clear"
alias desktop='cd ~/Desktop'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias cat='bat'
alias cd='z'

# Programming problems alias
alias probs='cd ~/Code/personal/code.ashish.me/'
alias leetcode='cd ~/Code/personal/code.ashish.me/leetcode'
alias geeksforgeeks='cd ~/Code/personal/code.ashish.me/geeksforgeeks'
alias cses='cd ~/Code/personal/code.ashish.me/cses'
alias til='~/Code/til'
alias website='~/Code/website'

# Generator alias
alias readme='yo ashishdotme:readme'
alias javap='yo ashishdotme:javaproblem'
alias jsp='yo ashishdotme:jsproblem'

# zsh
alias restart='. ~/.zshrc'

# Common alias
alias zshrc='${=EDITOR} ${ZDOTDIR:-$HOME}/.zshrc' # Quick access to the .zshrc file
alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias t='tail -f'

alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

alias dud='du -d 1 -h'
alias duf='du -sh *'
(( $+commands[fd] )) || alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias h='history'
alias hgrep="fc -El 0 | grep"
alias help='man'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

autoload -Uz is-at-least
if is-at-least 4.2.0; then
  if [[ -n "$BROWSER" ]]; then
    _browser_fts=(htm html de org net com at cx nl se dk)
    for ft in $_browser_fts; do alias -s $ft='$BROWSER'; done
  fi

  _editor_fts=(cpp cxx cc c hh h inl asc txt TXT tex)
  for ft in $_editor_fts; do alias -s $ft='$EDITOR'; done

  if [[ -n "$XIVIEWER" ]]; then
    _image_fts=(jpg jpeg png gif mng tiff tif xpm)
    for ft in $_image_fts; do alias -s $ft='$XIVIEWER'; done
  fi

  _media_fts=(ape avi flv m4a mkv mov mp3 mpeg mpg ogg ogm rm wav webm)
  for ft in $_media_fts; do alias -s $ft=mplayer; done

  alias -s pdf=acroread
  alias -s ps=gv
  alias -s dvi=xdvi
  alias -s chm=xchm
  alias -s djvu=djview

  alias -s zip="unzip -l"
  alias -s rar="unrar l"
  alias -s tar="tar tf"
  alias -s tar.gz="echo "
  alias -s ace="unace l"
fi

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
