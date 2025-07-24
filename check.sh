#!/bin/bash

# loop directories
for dir in */; do
 stow -Rnv $dir
done
