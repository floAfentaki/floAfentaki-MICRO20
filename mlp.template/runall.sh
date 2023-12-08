#!/bin/bash

if [ "$#" -ne 1 ]; then
       echo "expecting initialize"
       exit
fi
initialize="$1"

if [[ "$initialize" != "true" && "$initialize" != "false" ]]; then
	echo "accepts only true or false"	
fi

resultsdir="all_results"

if [ -d "$resultsdir" ]; then
	echo "results dir exists"
	exit
fi

MINTH="80"
#MINSIG="3"
MAXSIG="12"
netlist="gate/original.sv"
vcd="./sim/top.vcd.gz"
verilogbase="hdl/top.v.base"
verilogsynth="hdl/top.v"

sigfile="significance"
saif_to_py="saif_to_py"
source ./prune_scripts/circuit_conf.sh
MAXOUTSIZE="$(grep output $netlist | grep $PRED_NAME | awk -F[:[] -v p=$PRED_NUM '{print int(($2+1)/p) }')"

export AXNETLIST="gate/ax.sv"

mkdir -p $resultsdir

cp $verilogbase $verilogsynth

echo "Start $(date)"
echo "run synthesis"
make dcsyn >> /dev/null 2>&1
cp gate/top.sv $netlist

./prune_scripts/prune.sh "$netlist" "$vcd" "0.${MINTH}" "0" "$initialize" "$initialize"
rm $AXNETLIST


echo "run gate sim & accuracy"
./prune_scripts/eval.sh
echo "run power"
make power >> /dev/null 2>&1
mv hdl/top.v reports/
mv gate/top.sv reports/
mv logs reports/
mv prune_scripts/pruneList reports/
mv reports $resultsdir/reports.100.0

for ((i=99;i>=$MINTH;i=i-1))
do
for j in $(./prune_scripts/get_significancelst.py "$saif_to_py" "0.$i" "$MAXSIG" "$MAXOUTSIZE" "$sigfile")
do
	echo "** $i $j **"
	./prune_scripts/prune.sh "$netlist" "$vcd" "0.${i}" "$j" "false" "false"
	mv $AXNETLIST hdl/top.v

	echo "run synthesis"
	make dcsyn >> /dev/null 2>&1
	make sta >> /dev/null 2>&1
	
	echo "run gate sim & accuracy"
	./prune_scripts/eval.sh
	echo "run power"
	make power >> /dev/null 2>&1
	
	mv hdl/top.v reports/
	mv gate/top.sv reports/
	mv logs reports/
	mv prune_scripts/pruneList reports/
	mv sim/output.txt reports/
	mv reports $resultsdir/reports.${i}.${j}
	
done
done

echo "Finished: $(date)"
