#!/usr/bin/env bash

# nginx_install()
#
# Add an apt repository and install Nginx from it
#
function nginx_install() {
	sudo add-apt-repository ppa:nginx/stable
	sudo apt-get update
	sudo apt-get install -y nginx
}

# nginx_run()
#
# Run Nginx helper functions
#
function nginx_run() {
	echo -e "\e[36mInstalling Nginx from ppa repository\e[0m"
	if nginx_install; then
		echo -e "\e[32mNginx installed\e[0m"
		echo
	else
		echo -e "\e[31mFailed Nginx installation\e[0m"
		echo
	fi
}

