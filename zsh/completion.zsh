# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# default to file completion
zstyle ':completion:*' completer _expand _complete _files _correct _approximate

zstyle ':prezto:module:utility' safe-ops 'yes'

zstyle ':prezto:module:git:info:keys' format \
  'prompt_info'    "%b" \
  'rprompt'        "%R" \
  'local_status'   "%C%D%a%d%m%r%U%u" \
  'remote_status'  "%B%A%S" \
  'sha'            "%c" \

