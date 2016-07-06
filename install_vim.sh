#!/bin/bash
#
# Installs links from the users home directory to the files in this project

# BASH strict mode - See http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

link_file () {
  local name=$1

  local target="${PWD}/${name}"
  local link_name="${HOME}/.${name}"

  # Check if the link already exists to see if it already points to the currect
  # target already of if it should be backed-up
  if [[ -e "${link_name}" ]]; then

    if [[ -L "${link_name}" ]]; then
      local existing
      existing=$(readlink "${link_name}")
      if [[ "${existing}" == "${target}" ]]; then
        # The symlink already points to the target. Nothing to do
        return
      fi
    fi

    echo "Creating link ${link_name} -> ${target} (Backup made)"
    ln -s --backup ${target} ${link_name}

  else
    echo "Creating link ${link_name} -> ${target}"
    ln -s ${target} ${link_name}
  fi
}

main () {
  if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi
  link_file 'vimrc'
  vim +PluginInstall +qall
  echo "Successfully finished install"
}

main "$@"
