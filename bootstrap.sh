#!/usr/bin/env bash

# Update the source lists
echo -e "\e[36mUpdating apt-get source lists\e[0m"
sudo apt-get update

# Add essentials for install Linux libraries
echo -e "\e[36mInstalling essential libraries for Linux\e[0m"
sudo apt-get install -y build-essential python-software-properties curl
echo -e "\e[32mFinished essential libraries installation\e[0m"

# Development files for libcurl (used by Ruby source on compilation)
echo -e "\e[36mInstalling LibCurl Development Headers with OpenSSL security patches\e[0m"
sudo apt-get install -y libcurl4-openssl-dev
echo -e "\e[32mFinished LibCurl installation\e[0m"

# Add colors to the bash prompt
source ./src/bash.sh
bash_run

# Install and Setup Git
source ./src/git.sh
git_run

# Setup Vim with Vundle
source ./src/vim.sh
vim_run

# Setup Tmux (Terminal Multiplexer)
source ./src/tmux.sh
tmux_run

# Install Nginx
source ./src/nginx.sh
nginx_run

# Install RVM (Ruby Version Manager)
#source ./src/rvm.sh
#rvm_run

# Install NodeJS
#source ./src/nodejs.sh
#nodejs_run

