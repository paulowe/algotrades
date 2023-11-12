#!/bin/bash
# Author: powe
# Script to Install
# Linux System Tools and
# Basic Python Components

# powe - Hash mismatch solution: https://github.com/jenkinsci/docker/issues/543

set -ex
# GENERAL LINUX
# apt-get install sudo
# rm -rf /var/lib/apt/lists/*
# apt-get clean
# apt-get update -o Acquire::CompressionTypes::Order::=gz

apt-get update  # updates the package index cache
apt-get upgrade -y  # updates packages
# installs system tools
apt-get install -y bzip2 # system tools
apt-get install -y gcc # system tools
apt-get install -y git  # system tools
apt-get install -y htop  # system tools
apt-get install -y screen  # system tools
apt-get install -y vim  # system tools
apt-get install -y wget  # system tools
apt-get upgrade -y bash  # upgrades bash if necessary
apt-get clean  # cleans up the package index cache

# INSTALL MINICONDA
# downloads Miniconda
# For x86_64
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh
# For Apple Silicon
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O Miniconda.sh
bash Miniconda.sh -b  # installs it
rm -rf Miniconda.sh  # removes the installer
export PATH="/root/miniconda3/bin:$PATH"  # prepends the new path

# INSTALL PYTHON LIBRARIES
conda install -y pandas  # installs pandas
conda install -y ipython  # installs IPython shell

# CUSTOMIZATION
cd /root/
wget http://hilpisch.com/.vimrc  # Vim configuration	
