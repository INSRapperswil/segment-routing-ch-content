#!/bin/bash

if [ -z "$1" ]
then
  echo "ERROR > Please provide a commit message"
  exit 1
fi

# ---> BUILD SITE <---
echo "INFO >>> BUILDING SITE"

echo "INFO > pulling deplyoment repository (segment-routing-ch.github.io) to /segment-routing/public"
cd segment-routing/public
git pull

# delete everything in public except .git and CNAME
echo "INFO > deleting previous website from deployment repository (deleting everything except .git/*, CNAME and README.md)"
shopt -s extglob
rm -rf !('.git/*'|'CNAME'|'README.md')

echo "INFO > compiling the website to segment-routing/public"
cd ..
hugo

# ---> DEPLOY SITE <---
echo "INFO >>> DEPLOYING SITE"
echo "INFO > committing and pushing website to segment-routing-ch.github.io"
cd public
git add .
git commit -m "$1"
git push

# ---> COMMITTING CHANGES <---
echo "INFO >>> COMMITTING CHANGES"
echo "INFO > committing theme changes to segment-routing-ch-theme"
cd ../themes/segment-routing-ch-theme
git add .
git commit -m "$1"
git push

echo "INFO > committing content changes to segment-routing-ch-source"
cd ../../..
git add .
git commit -m "$1"
git push
