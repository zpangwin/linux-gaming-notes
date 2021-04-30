#!/bin/bash

# change to wherever you prefer to download code
BASE_DIR="$HOME/Downloads/Gaming/Code"
mkdir -p "${BASE_DIR}"
cd "${BASE_DIR}"

# if you want to just use a precompiled version that's fine too:
git clone git@gitlab.com:torkel104/libstrangle.git

# Build and install LibStrangle
# Note: this one won't auto install dependencies; you need to read the README.md file
# and follow their instructions. Package names/etc will be distro-specific
#
# Depends:
#   debian-based: sudo apt-get install -y gcc-multilib g++-multilib libx11-dev mesa-common-dev
#   fedora: sudo dnf install -y gcc.x86_64 glibc-devel.x86_64 glibc-devel.i686
#   opensuse (untested): sudo zypper install -y glibc-devel-32bit gcc gcc-32bit ?
#
cd libstrangle
make
sudo make install
