# Found on the ZshWiki
#  http://zshwiki.org/home/config/prompt
#

# get the name of the branch we are on

#function git_prompt_info() {
#  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
#  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
#}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

if [ $SSH_TTY ]; then
    # connected via ssh - colourise host to indicate this
    ARROW="%{$fg[blue]%}➤ "
else
    ARROW="%{$fg[yellow]%}➤ "
fi

PROMPT='%{$fg[red]%}[%n@%m] $(git_prompt_info) %{$fg[blue]%}%3~ $ARROW  %{${fg[default]}%}'

export LSCOLORS="exfxcxdxbxegedabagacad"
