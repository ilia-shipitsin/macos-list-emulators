#!/bin/bash

mkdir ~/sims

cd /Applications
xcodes=`find . -type d -name "Xcode*" -maxdepth 1 -print | awk -F '/' '{printf("%s\n", $2);}'`
for xcode in $xcodes; do
  echo $xcode | awk '{printf("/Applications/%s/Contents/Developer/usr/bin/simctl list -j devices\n", $1);}' | sh > ~/sims/$xcode
done

ls ~/sims

