#!/bin/bash -x

# run sinbad against a example grammar

currdir=$(pwd)
echo $currdir
# build ACCENT
wget http://accent.compilertools.net/accent.tar -O ~/accent.tar
tar xf ~/accent.tar -C ~/
(cd ~/accent/accent && ./build)

export ACCENT_DIR=${HOME}/accent
echo $ACCENT_DIR

git clone https://github.com/nvasudevan/sinbad.git ~/sinbad
python ~/sinbad/src/sinbad -b dynamic1 -d 10 bin/amb2.acc bin/general.lex
