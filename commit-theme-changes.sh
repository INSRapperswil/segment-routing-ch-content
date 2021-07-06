#!/bin/bash

if [ -z "$1" ]
then
  echo "Please provide a commit message"
  exit 1
fi

cd segment-routing/themes/segment-routing-ch-theme
git add .
git commit -m "$1"
git push
