# make terminal command navigation sane again
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char
#Who doesn't want home and end to work?
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
#Incremental search is elite!
bindkey -M vicmd "/" history-incremental-search-baczEkward
bindkey -M vicmd "?" history-incremental-search-forward
#oh wow! This is killer… try it!
bindkey -M vicmd "q" push-line
