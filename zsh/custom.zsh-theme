# https://github.com/rigor789/oh-my-zsh-material-theme
if [[ -z $ZSH_THEME_MATERIAL_PREFIX ]]; then
    ZSH_THEME_MATERIAL_PREFIX='⬢'
fi

if [[ -z $ZSH_THEME_MATERIAL_SUFFIX ]]; then
    ZSH_THEME_MATERIAL_SUFFIX='❯'
fi

PROMPT='%{$FG[011]%}$ZSH_THEME_MATERIAL_PREFIX%{$fg_bold[cyan]%}%p %{$FG[006]%}%c%B$(git_prompt_info) %{$FG[009]%}$ZSH_THEME_MATERIAL_SUFFIX%{$FG[011]%}$ZSH_THEME_MATERIAL_SUFFIX%{$FG[010]%}
$ZSH_THEME_MATERIAL_SUFFIX%b %{$reset_color%}'

# Customize git_prompt_info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[006]%}:%{$FG[009]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[011]%}(●)%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$FG[010]%}(●)%{$reset_color%}"

# Change ls color to bold cyan
export LS_COLORS=$LS_COLORS:'di=1;36:'
