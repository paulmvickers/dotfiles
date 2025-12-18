#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sudo dnf install -y epel-release
sudo dnf makecache
sudo dnf install -y $(cat "$SCRIPT_DIR/packages.txt")
