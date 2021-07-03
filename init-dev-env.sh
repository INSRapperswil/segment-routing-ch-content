#!/bin/bash

git submodule init
git submodule update
cd segment-routing/public
git checkout main
git pull
