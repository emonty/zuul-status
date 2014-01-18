#!/bin/bash

# This script executes the build.

VDISPLAY=99
DIMENSIONS='1280x1024x24'
XVFB=/usr/bin/Xvfb
BIN_DIR="$( cd "$( dirname "$0" )" && pwd )"
WORKSPACE="$(dirname "$BIN_DIR")"

# Add our new bin directory to the PATH
echo "Adding $WORKSPACE/.local/bin to PATH"
export PATH=$WORKSPACE/.local/bin:$PATH
echo "Adding $WORKSPACE/node_modules/.bin to PATH"
export PATH=$WORKSPACE/node_modules/.bin:$PATH

cd $WORKSPACE;

echo "Installing build dependencies"
npm prune
npm install

echo "Installing compile dependencies"
bower prune
bower install

echo "Launching Virtual Frame Buffer"
$XVFB :${VDISPLAY} -screen 0 ${DIMENSIONS} -ac +extension GLX +render -noreset 2>&1 > /dev/null &

echo "Building"
set +e
DISPLAY=:${VDISPLAY} grunt clean test
result=$?

pkill Xvfb 2>&1 > /dev/null
set -e

exit $result