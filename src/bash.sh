#!/usr/bin/env bash

# bash_color_prompt() {
#
# Remove the comment from force_color_prompt on .bashrc
#
function bash_color_prompt() {
	bashrc="$HOME/.bashrc"
	sed -i "s/#force_color_prompt=yes/force_color_prompt=yes/g" $bashrc
	source $bashrc
}

# bash_run()
#
# Function that runs Bash helpers
#
function bash_run() {
	echo -e "\e[36mUpdating bash prompt to enable colors\e[0m"
	if bash_color_prompt; then
		echo -e "\e[32mBash color prompt updated\e[0m"
	else
		echo -e "\e[31mFailed on bash color prompt update\e[0m"
	fi
}

