#!/bin/bash -x

# run sinbad against a example grammar

git clone https://github.com/nvasudevan/sinbad.git ~/sinbad
python ~/sinbad/src/sinbad -b dynamic1 -d 10 bin/amb2.acc bin/general.lex
python ~/sinbad/src/sinbad -b dynamic3 -d 10 bin/amb2.acc bin/general.lex
python ~/sinbad/src/sinbad -b dynamic4 -d 10 -w 0.1 bin/amb2.acc bin/general.lex
