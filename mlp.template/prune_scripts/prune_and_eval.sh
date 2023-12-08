#!/bin/bash
if [ "$#" -ne 6 ]; then
       echo "illegal number of parameters"
       exit
fi
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

export AXNETLIST="gate/ax.sv"

$SCRIPTPATH/prune.sh "$@"
cp $AXNETLIST gate/top.sv
$SCRIPTPATH/eval.sh

