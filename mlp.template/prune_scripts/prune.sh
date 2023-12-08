#!/bin/bash
if [ "$#" -ne 6 ]; then
       echo "illegal number of parameters"
       exit
fi


SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
source $SCRIPTPATH/config.sh

saif_to_py="./saif_to_py"
pruneList="$dir/pruneList"
significance="./significance"

netlist="$1"
vcd="$2"
threshold="$3"
sig_threshold="$4"
generate_saif="$5"
generate_sig="$6"

cp $netlist $gatenetlist

#if [ ! -f "$saif_to_py" ]; then
if [[ "$generate_saif" == "true" ]]; then
    #cp $netlist $axnetlist
    
    rm sim/output.txt
    
    rm -f sim/$isimFile
    ln -s $TRAINX sim/$isimFile
    
    #get vcd
    echo "run sta"
    make sta >> /dev/null 2>&1
    #$dir/prsta.sh $significance $dir/prsta.tcl >> /dev/null 2>&1
    echo "run gate sim"
    $dir/rtlgatesim.sh >> /dev/null 2>&1
    
    #parse saif
    echo "vcd to saif"
    vcd2saif -format verilog -input "$vcd" -output top.saif >> /dev/null 2>&1
    echo "saif to python"
    /usr/bin/time -f "time: \t%E"  python3 $dir/parseSAIF.py top.saif $saif_to_py
    rm top.saif
fi

#cp $netlist $axnetlist

#approx
echo "find approximate wires & approximate netlist"
/usr/bin/time -f "time: \t%E" python3 $dir/axlist.py "$saif_to_py" "$threshold" "$sig_threshold" "$(grep output $netlist | grep $PRED_NAME | awk -F[:[] -v p=$PRED_NUM '{print int(($2+1)/p) }')" "$generate_sig" $netlist $axnetlist > $pruneList

