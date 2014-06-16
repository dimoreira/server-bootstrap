#!/usr/bin/env bash

# rvm_install()
#
# Install RVM (Ruby Version Manager)
#
function rvm_install() {
	\curl -L https://get.rvm.io | bash -s
}

# rvm_requirements()
#
# Run the "rvm requirements" for system checkup
#
function rvm_requirements() {
	
}

# rvm_run()
#
# Run RVM helper functions
#
function rvm_run() {
	echo -e "\e[36mInstalling RVM (Ruby Version Manager)\e[0m"
	if rvm_install; then
		echo -e "\e[32mRVM installed\e[0m"
	else
		echo -e "\e[31mFailed RVM installation\e[0m"
	fi
}

