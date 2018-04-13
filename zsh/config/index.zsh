setopt COMPLETE_ALIASES

fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)