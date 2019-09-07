() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

if [[ $UID -ne 0 ]]; then
  PR_PROMPT_F1='%F{blue}╭─ %f'
  PR_PROMPT_DIR='%B%F{blue}%~%f%b'
  PR_PROMPT_F2='%F{blue}╰─➤ %f'
  ZSH_THEME_GIT_PROMPT_PREFIX="%F{blue}‹ "
  ZSH_THEME_GIT_PROMPT_SUFFIX="› %f"
else
  PR_PROMPT_F1='%F{red}╭─ %f'
  PR_PROMPT_DIR='%B%F{red}%~%f%b'
  PR_PROMPT_F2='%F{red}╰─➤ %f'
  ZSH_THEME_GIT_PROMPT_PREFIX="%F{red}‹ "
  ZSH_THEME_GIT_PROMPT_SUFFIX="› %f"
fi

local return_code="%(?..%F{red}%? ↵%f)"
local git_branch=' $(git_prompt_info)'

PROMPT="${PR_PROMPT_F1}${PR_PROMPT_DIR}
${PR_PROMPT_F2}$PR_PROMPT"
RPROMPT="${git_branch} ${return_code}"


}
