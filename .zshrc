# load zsh completion from brew
#  chmod go-w /usr/local/share (remove insecure warning)
if type brew &>/dev/null; then
  FPATH=/usr/local/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Do menu-driven completion.
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ''

# ls customizations
alias ls='ls -G'
# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'