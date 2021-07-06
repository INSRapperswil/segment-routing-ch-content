#!/bin/bash

#update deployment repository
cd segment-routing/public
git pull

# delete everything in public except .git and CNAME
shopt -s extglob
rm -rf !('.git/*'|'CNAME'|'README.md')

#build site
cd ..
hugo
