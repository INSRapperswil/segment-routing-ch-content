#!/bin/bash

git submodule init
git submodule update

cd segment-routing/public
git checkout main
git pull

cd ../themes/segment-routing-ch-theme
git checkout main
git pull
