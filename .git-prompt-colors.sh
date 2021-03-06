# This theme for gitprompt.sh is optimized for the "Solarized Dark" and "Solarized Light" color schemes
# tweaked for Ubuntu terminal fonts

override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Solarized"
  GIT_PROMPT_STAGED="${Yellow}●"
  GIT_PROMPT_STASHED="${BoldMagenta}⚑ "
  GIT_PROMPT_CLEAN="${Green}✔"
  if [ "$SSH_CONNECTION" ]; then GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ (${BoldBlue}\\h) ${Yellow}${PathShort}${ResetColor}"; fi
  GIT_PROMPT_END_USER=" \n${BoldBlue}${Time12a}${ResetColor} $ "
  GIT_PROMPT_END_ROOT=" \n${BoldBlue}${Time12a}${ResetColor} # "
}

reload_git_prompt_colors "Solarized"
