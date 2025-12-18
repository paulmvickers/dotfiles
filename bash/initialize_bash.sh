#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rm ~/.bashrc ~/.bash_aliases
cp "$SCRIPT_DIR/.bashrc" ~/.bashrc
cp "$SCRIPT_DIR/.bash_aliases" ~/.bash_aliases
