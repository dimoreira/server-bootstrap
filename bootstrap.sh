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


# ======= Running scripts ========= #
# ================================= #

# Bash
#
# This script just edits the .bashrc file adding
# color support for bash prompt.
#
source ./src/bash.sh
bash_run

# Git
#
# This script runs Git installation from apt-get
# and after runs a setup based on an open-sourced
# configuration file with some alias configs.
#
source ./src/git.sh
git_run

# Vim
#
# This script runs Vim installation from apt-get
# and after install Vundle for Vim plugins administration.
# After all downloads and install a setup based on an
# open-sources configuration file with some plugins.
#
source ./src/vim.sh
vim_run

# Tmux (Terminal Multiplexer)
#
# This script runs Tmux installation from apt-get.
#
source ./src/tmux.sh
tmux_run

# Nginx
#
# This script adds a new apt-repository from PPA for
# Nginx and runs the Nginx installation from apt-get.
# 
source ./src/nginx.sh
nginx_run

# RVM (Ruby Version Manager)
#
# This script runs RVM installation directly from
# RVM website
#
# Usage: rvm_run
#
# You can use some variables for setup custom
# installation of ruby binaries:
#
# RVM_RUBY_VERSION=2.1.2
#source ./src/rvm.sh
#rvm_run

# Install NodeJS
#source ./src/nodejs.sh
#nodejs_run

