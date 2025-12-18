#!/bin/bash

# Add NOPASSWD sudoers entry for current user
USER=$(whoami)
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER
sudo chmod 440 /etc/sudoers.d/$USER
