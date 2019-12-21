#!/bin/bash

# untar your Python installation
tar -xzf python.tar.gz
# make sure the script will use your Python installation, 
# and the working directory as it's home location
export PATH=$(pwd)/python/bin:$PATH
mkdir home
export HOME=$(pwd)/home
# run your script

tar -xvzf clust_file.tar.gz
# cp $(pwd)/clust_file/*  .

cd clust_file

python clust.py $(pwd)/input -o $(pwd)/output

tar -cvzf output.tar.gz output

mv output.tar.gz ..

cd .. 