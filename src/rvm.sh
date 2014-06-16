#!/usr/bin/env bash

# rvm_install()
#
# Install RVM (Ruby Version Manager)
#
function rvm_install() {
	\curl -L https://get.rvm.io | bash -s
	rm -f $HOME/.bash_profile
	source $HOME/.profile
	source $HOME/.rvm/script/rvm
}

# rvm_requirements()
#
# Run the "rvm requirements" for system checkup
#
function rvm_requirements() {
	rvm requirements
}

# rvm_ruby_install()
#
# Run the compilation and installation of
# a ruby binary from $RUBY_VERSION
#
function rvm_ruby_install() {
	rvm install $RVM_RUBY_VERSION
}

# rvm_run()
#
# Run RVM helper functions
#
function rvm_run() {
	echo -e "\e[36mInstalling RVM (Ruby Version Manager)\e[0m"
	if rvm_install; then
		echo -e "\e[32mRVM installed\e[0m"
		echo "\n"

		echo -e "\e[36mRunning \"rvm requirements\"\e[0m"
		if rvm_requirements; then
			echo -e "\e[32mInstalled RVM requirements\e[0m"
			echo "\n"

			# Ruby installation
			if [ $RVM_RUBY_VERSION ]; then
				echo -e "\e[36mInstalling Ruby $RVM_RUBY_VERSION\e[0m"
				if rvm_ruby_install; then
					echo -e "\e[32mRuby $RVM_RUBY_VERSION installed\e[0m"
				else
					echo -e "\e[31mFailed Ruby installation\e[0m"
				fi
		else
			echo -e "\e[31mFailed RVM requirements installation\e[0m"
		fi
	else
		echo -e "\e[31mFailed RVM installation\e[0m"
	fi
}

