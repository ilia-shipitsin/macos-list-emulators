#!/bin/bash

cd /Applications
find . -type d -name "Xcode*" -maxdepth 1 -print | awk -F '/' '{printf("/Applications/%s/Contents/Developer/usr/bin/simctl list -j devices\n", $2);}'

