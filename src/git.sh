#!/usr/bin/env bash

# git_install()
#
# Run Git installation from apt-get
#
function git_install() {
	sudo apt-get install -y git-core
}

# git_setup()
#
# Setup Git from a base gitconfig file
#
function git_setup() {
	curl -o $HOME/.gitconfig https://raw.githubusercontent.com/dimoreira/dotfiles/master/gitconfig
}

# git_run()
#
# Function that runs Git install and setup
#
function git_run() {
	echo -e "\e[36mInstalling Git from apt-get\e[0m"
	if git_install; then
		echo -e "\e[32mGit installed\e[0m"
		echo

		echo -e "\e[36mGit setup from configuration\e[0m"
		if git_setup; then
			echo -e "\e[32mGit configured\e[0m"
		else
			echo -e "\e[31mFailed Git configuration\e[0m"
		fi
	else
		echo -e "\e[31mFailed git installation\e[0m"
	fi
}

