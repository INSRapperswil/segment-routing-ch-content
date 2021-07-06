#!/bin/bash

if [ -z "$1" ]
then
  echo "Please provide a commit message"
  exit 1
fi

#update repository
cd segment-routing/public
git pull

# delete everything in public except .git and CNAME
shopt -s extglob
rm -rf !('.git/*'|'CNAME')

cp ../../coming-soon-site/* .

git add .
git commit -m "$1"
git push
