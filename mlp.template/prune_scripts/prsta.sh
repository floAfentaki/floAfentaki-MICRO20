#!/bin/bash
source ./scripts/env.sh

mkdir -p ./reports
mkdir -p ./logs

script="$SCDIR/prsta.tcl"
netsfile=$1
outfile=$2
predname=$3
id=$4

export SIGFILE="$outfile"
export NETSFILE="$netsfile"
export PREDWIRENAME="$predname"
cat /dev/null > $outfile
pt_shell  -f $script | tee $SCDIR/pt_${id}.log

rm -rf transcript *.wlf *.mr *.syn *.log *.svf *.pvl *~

