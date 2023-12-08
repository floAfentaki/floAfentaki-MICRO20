#!/bin/bash

./prune_scripts/prune_and_eval.sh gate/original.sv sim/top.vcd.gz 0.80 0 true true

./prune_scripts/prune_and_eval.sh gate/original.sv sim/top.vcd.gz 0.80 10 false false

./prune_scripts/prune_and_eval.sh gate/original.sv sim/top.vcd.gz 0.90 10 false false

./prune_scripts/prune_and_eval.sh gate/original.sv sim/top.vcd.gz 0.90 5 false false
