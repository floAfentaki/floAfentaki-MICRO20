#!/bin/bash


export TRAINX="${TRAINX:-sim.Xtrain}"
export TESTX="${TESTX:-sim.Xtest}"
export TESTY="${TESTY:-sim.Ytest}"
export dir="./prune_scripts"
export SCDIR="$dir"
export isimFile="inputs.txt"
export axnetlist="${AXNETLIST:-gate/ax.sv}"
export gatenetlist="gate/top.sv"

#if regressor OUT_NAME=PRED_NAME=out and PRED_NUM=1. if classifier OUT_NAME=out, PRED_NAME=predo, and PRED_NUM=XX
IN_NAME="inp"
OUT_NAME="out"

PT_NETS_LIST="netList"
PT_OUTPUTS_LIST="outputsList"
PT_THREADS=5

source $dir/circuit_conf.sh

cat <<EOF > $dir/parameters.py
IN_NAME="$IN_NAME"
OUT_NAME="$OUT_NAME"
PRED_NAME="$PRED_NAME"
PRED_NUM=$PRED_NUM

PT_NETS_LIST="$PT_NETS_LIST"
PT_OUTPUTS_LIST="$PT_OUTPUTS_LIST"
PT_THREADS=$PT_THREADS

SIM_YLST=[ ${SIM_YLST[*]} ]
SIM_REGRESSOR=$SIM_REGRESSOR
SIM_FRACTION_BITS=$SIM_FRACTION_BITS
EOF

cat <<EOF > sim/parameter.vh
parameter period = 200000000;
parameter WIDTH_A = $SIM_WIDTH_A;
parameter NUM_A = $SIM_NUM_A;
parameter OUTWIDTH = $SIM_OUTWIDTH;
EOF
