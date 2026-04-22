HISTSIZE=5000
SAVEHIST=5000
HISTFILE="$XDG_CACHE_HOME/zsh_history"
setopt append_history inc_append_history share_history
setopt hist_ignore_space hist_ignore_dups

zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
setopt auto_menu menu_complete
bindkey '^[[Z' reverse-menu-complete

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

setopt extended_glob

setopt prompt_subst
function virtualenv_prompt_info(){
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX=[}${VIRTUAL_ENV:t:gs/%/%%}${ZSH_THEME_VIRTUALENV_SUFFIX=]} "
}
export VIRTUAL_ENV_DISABLE_PROMPT=1
git_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}
PROMPT=$'┌─%B%(?..%F{red}✗ %f)$(virtualenv_prompt_info)%F{yellow}%n@%m%f %F{red}%~%f %F{magenta}$(git_branch)%f%b\n└─$ '

source $ZDOTDIR/aliases
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
