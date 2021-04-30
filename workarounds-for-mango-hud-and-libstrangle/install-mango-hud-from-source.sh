#!/bin/bash

# change to wherever you prefer to download code
BASE_DIR="$HOME/Downloads/Gaming/Code"
mkdir -p "${BASE_DIR}"
cd "${BASE_DIR}"

# if you want to just use a precompiled version that's fine too:
#   tar.gz: https://github.com/flightlessmango/MangoHud/releases
#   fedora: sudo dnf install -y mangohud
#   ubuntu: https://launchpad.net/~flexiondotorg/+archive/ubuntu/mangohud

# otherwise, clone the mangohud and libstrangle repos
git clone git@github.com:flightlessmango/MangoHud.git

# build and install MangeHud
# script will prompt you for missing depends; you just have to type 'y' and enter
cd MangoHud
./build.sh build
./build.sh package
./build.sh install
