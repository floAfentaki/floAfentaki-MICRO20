#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
source $SCRIPTPATH/config.sh


echo "set test set"
rm -f sim/$isimFile
ln -s $TESTX sim/$isimFile

echo "run gate sim"
/usr/bin/time -f "time: \t%E" $dir/rtlgatesim.sh > $dir/../logs/sim.log 2>&1
python3 $dir/sim_calc_accuracy.py sim/$TESTY sim/output.txt | tee reports/accuracy.rpt
