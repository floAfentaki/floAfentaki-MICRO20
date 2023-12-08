#!/bin/bash

if [ "$#" -ne 2 ]; then
       echo "expecting dataset trained_model"
       exit
fi

prefix="mlp"
mkdir -p synthesis
name="synthesis/${1}"
if [ -d "$name" ]; then
  rm -rf $name
fi
cp -r 0_template $name

python syn_project.py $1 $2 | tee ${1}py.rpt
mv ${1}py.rpt $name/py.rpt

regclf="clf"
for f in "sim.Xtrain" "sim.Xtest" "sim.Ytest" "top_tb.v"
do
	cp $1$f $name/sim/$f 
done

cp ${1}exact.v ${name}/hdl/top.v
mv ${1}exact.v ${name}/hdl/top.v.base

for f in "${1}sim.Xtrain" "${1}sim.Xtest" "${1}sim.Ytest" "${1}top_tb.v" "${1}py.rpt"
do
	rm $f
done