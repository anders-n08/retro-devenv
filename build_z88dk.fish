#!/usr/bin/env fish

git clone --recursive https://github.com/z88dk/z88dk.git

cd z88dk
set PATH (PWD)/bin $PATH

chmod +x build.sh

# This does not seem to work.
# gsed -i 's/DESTDIR=\/usr\/local/DESTDIR="\/Users\/anders\/.local\/z88dk"/' build.sh

bass export BUILD_SDCC=1
./build.sh

