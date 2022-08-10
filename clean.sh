#!/bin/bash

FILE_EXTEND_NAMES=(".pdf" ".aux" ".fdb_latexmk" ".fls" ".log" ".out" ".synctex.gz .xdv")

for name in ${FILE_EXTEND_NAMES[*]}; do
  # Here, in order not to affect build directory
  find . -maxdepth 1 -name "*${name}"  -exec rm {} \;
  find ./src -name "*${name}"  -exec rm {} \;
done
