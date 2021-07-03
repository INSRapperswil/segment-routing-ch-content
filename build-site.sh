#!/bin/bash

#update repository
cd segment-routing/public
git pull

# delete everything in public except .git
find * -path ./.git -prune -o -exec rm -rf {} \; 2> /dev/null

#build site
cd ..
hugo
