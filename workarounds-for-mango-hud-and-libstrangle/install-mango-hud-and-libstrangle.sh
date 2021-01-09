#!/bin/bash

# change to wherever you prefer to download code
cd ~/Downloads

# if you want to just use a precompiled version that's fine too:
#   tar.gz: https://github.com/flightlessmango/MangoHud/releases
#   fedora: sudo dnf install -y mangohud
#   ubuntu: https://launchpad.net/~flexiondotorg/+archive/ubuntu/mangohud

# otherwise, clone the mangohud and libstrangle repos
git clone git@github.com:flightlessmango/MangoHud.git
git clone git@gitlab.com:torkel104/libstrangle.git

# build and install MangeHud
# script will prompt you for missing depends; you just have to type 'y' and enter
cd MangoHud
./build.sh build
./build.sh package
./build.sh install

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
