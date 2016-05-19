#!/bin/basha -x

# run sinbad against a example grammar

# build ACCENT
cd ~
wget http://accent.compilertools.net/accent.tar
tar xf accent.tar
cd accent/accent
./build

export ACCENT_DIR=${HOME}/accent

echo $ACCENT_DIR
#python ../src/sinbad -b dynamic1 -d 10 amb2.acc general.lex