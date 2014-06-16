#!/usr/bin/env bash

# nodejs_dependencies()
#
# Install dependencies for NodeJs
#
function nodejs_dependencies() {
	sudo apt-get install -y python g++ make
}

# nodejs_install()
#
# Install NodeJs
#
function nodejs_install() {
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install -y nodejs
}

# nodejs_run()
#
# Run NodeJs helper functions
#
function nodejs_run() {
	echo -e "\e[36mInstalling NodeJs dependencies\e[0m"
	if nodejs_dependencies; then
		echo -e "\e[32mInstalled NodeJs dependencies\e[0m"
		echo
		
		echo -e "\e[36mInstalling NodeJs from ppa repository\e[0m"
		if nodejs_install; then
			echo -e "\e[32mInstalled NodeJs\e[0m"
			echo
		else
			echo -e "\e[31mFailed NodeJs installation\e[0m"
			echo
		fi
	else
		echo -e "\e[31mFailed NodeJs dependencies installation\e[0m"
		echo
	fi
}

