ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

if [ $SSH_TTY ]; then
    ARROW="%{$fg[blue]%}➤ "
else
    ARROW="%{$fg[yellow]%}➤ "
fi

PROMPT='%{$fg[red]%}[%n@%m] $(git_prompt_info) %{$fg[blue]%}%3~ $ARROW %{${fg[default]}%}'

export LSCOLORS="exfxcxdxbxegedabagacad"

precmd () { print -Pn "\e]1;`hostname | cut -d. -f1`\a" }
