#!/usr/bin/env bash

# vim_install()
#
# Run Vim installation from apt-get
#
function vim_install() {
	sudo apt-get install -y vim
}

# vundle_install()
#
# Install Vundle for Vim plugins repositories
#
function vundle_install() {
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

# vim_setup()
#
# Setup Vim from default configuration file
#
function vim_setup() {
	curl -o $HOME/.vimrc https://raw.githubusercontent.com/dimoreira/dotfiles/master/vimrc &&
		vim +PluginInstall +qall
}

# vim_run()
#
# Function that runs Vim install, setup and configuration
#
function vim_run() {
	echo -e "\e[36mInstalling Vim from apt-get\e[0m"
	if vim_install; then
		echo -e "\e[32mVim installed\e[0m"
		echo

		if [ -d "$HOME/.vim/bundle/Vundle.vim" ]; then
			echo -e "\e[33mVundle already installed\e[0m"
		else
			echo -e "\e[36mInstalling Vundle\e[0m"
			if vundle_install; then
				echo -e "\e[32mVundle installed\e[0m"
				echo

				echo -e "\e[36mVim setup from configuration\e[0m"
				if vim_setup; then
					echo -e "\e[32mVim configured\e[0m"
					echo
				else
					echo -e "\e[31Failed Vim configuration\e[0m"
					echo
				fi
			else
				echo -e "\e[31mFailed Vundle installation\e[0m"
				echo
			fi
		fi
	else
		echo -e "\e[31mFailed Vim installation\e[0m"
		echo
	fi
}

