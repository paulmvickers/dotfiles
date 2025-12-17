#!/bin/bash

# Install required packages and update cache 
sudo dnf install -y epel-release
sudo dnf makecache

# Install requested packages
sudo dnf install -y $(cat bash/packages.txt)

# Move dotfiles
rm ~/.bashrc ~/.bash_aliases
cp bash/.bashrc ~/.bashrc
cp bash/.bash_aliases ~/.bash_aliases

