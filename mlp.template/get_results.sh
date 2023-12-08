#/!bin/bash

cd all_results
dir=$(pwd)
d=","
echo "%ratio${d}signif${d}slack(ns)${d}area(mm2)${d}power(mW)${d}accuracy"
for r in $(ls | sort -V -r)
do
	i=$(echo $r | awk -F'.' '{print $2}')
	j=$(echo $r | awk -F'.' '{print $3}')

	cd $r
	area=$(cat *ns.area.rpt | grep 'Total cell area:' | awk '{printf "%.5e", ($NF/10^6)}')
	slack=$(cat *ns.timing.rpt | grep 'slack (' | awk '{printf "%.5e", ($NF/10^6)}')
	power=$(cat *.power.ptpx.rpt | grep 'Total Power' | awk -F'[=(]' '{print 1000*$2}')
	accuracy=$(awk '{printf "%5f", $2}' accuracy.rpt)

	echo "${i}${d}${j}${d}${slack}${d}${area}${d}${power}${d}${accuracy}"


	cd $dir
done
