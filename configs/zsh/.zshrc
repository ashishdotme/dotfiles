# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ashish/.oh-my-zsh"
export DENO_INSTALL="/Users/ashish/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export STARSHIP_CONFIG=~/.starship/starship.toml

fd_default_opts='--hidden --follow --exclude "{.steam,.local,.cache,.git,node_modules}"'
fd_files="fd ${fd_default_opts} -t f ."
fd_dirs="fd ${fd_default_opts} -t d ."

fzf_finder_options='--height 40% --layout=reverse --border'
fzf_file_layout="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"
fzf_dir_layout="--preview 'exa -lbhHigUmuSa --no-time  --git --color-scale {}'"

export FZF_DEFAULT_COMMAND=$fd_files
export FZF_DEFAULT_OPTS=$fzf_finder_options

export FZF_CTRL_T_COMMAND=$fd_files
export FZF_CTRL_T_OPTS=$fzf_file_layout

export FZF_ALT_C_COMMAND=$fd_dirs
export FZF_ALT_C_OPTS=$fzf_dir_layout

autoload -Uz compinit && compinit
zstyle ':completion:*' ignored-patterns '*.|*..' # ignore the special dirs . and .. in tab completion
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#5a524c'

bindkey '^]' autosuggest-accept
bindkey '^P' fzf-file-widget
bindkey '^O' fzf-cd-widget
bindkey '^R' fzf-history-widget
bindkey '^E' 'vim $(fzf)\n'

export EDITOR=code
export BROWSER=/Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

source ~/.alias
source ~/.functions

ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW=true
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  # docker        # Docker section
  aws           # Amazon Web Services section
  # gcloud        # Google Cloud Platform section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  # kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character

)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
plugins=(
  git
  fd
  zsh-aliases-exa
  emoji
  encode64
  macos
  aliases
  dotenv
  fzf
  gitignore
  git-flow
  httpie
  marked2
  npm
  ripgrep
  yarn
  zsh-autosuggestions
  zsh-completions
  poetry
)

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
alias python="python3"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias mon2cam="deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts"
export PATH="/usr/local/opt/maven@3.5/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

eval "$(zoxide init zsh)"
source ~/.fzf.zsh
source /Users/ashish/.config/broot/launcher/bash/br
~/utils/welcome.sh

export PATH="$HOME/.poetry/bin:$PATH"
