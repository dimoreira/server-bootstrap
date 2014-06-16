#!/usr/bin/env bash

# tmux_install()
#
# Installs Tmux (terminal multiplexer) from apt-get
#
function tmux_install() {
	sudo apt-get install -y tmux
}

# tmux_run()
#
# Runs the Tmux helper functions
#
function tmux_run() {
	echo -e "\e[36mInstalling tmux from apt-get\e[0m"
	if tmux_install; then
		echo -e "\e[32mTmux installed\e[0m"
		echo
	else
		echo -e "\e[31mFailed tmux installation\e[0m"
		echo
	fi
}

