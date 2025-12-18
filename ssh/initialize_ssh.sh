#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -d ~/.ssh ]; then
	mkdir -p ~/.ssh
	chmod 700 ~/.ssh
fi

cat "$SCRIPT_DIR/paulmvickers.pub" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/*
