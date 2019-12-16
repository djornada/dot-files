() {

if [[ $UID -ne 0 ]]; then
  PR_PROMPT_F1='╭─ %f'
  PR_PROMPT_DIR='%B%~%b'
  PR_PROMPT_F2='╰─➤  '
  ZSH_THEME_GIT_PROMPT_PREFIX="‹ "
  ZSH_THEME_GIT_PROMPT_SUFFIX="› "
else
  PR_PROMPT_F1='F{red}╭─ %f'
  PR_PROMPT_DIR='%B%F{red}%~%f%b'
  PR_PROMPT_F2='%F{red}╰─➤ %f'
  ZSH_THEME_GIT_PROMPT_PREFIX="%F{red}‹ "
  ZSH_THEME_GIT_PROMPT_SUFFIX="# %f"
fi

local return_code="%(?..%F{red}%? ↵%f)"
local git_branch=' $(git_prompt_info)'

PROMPT="${PR_PROMPT_F1}${PR_PROMPT_DIR}
${PR_PROMPT_F2}"
RPROMPT="${git_branch} ${return_code}"
}
