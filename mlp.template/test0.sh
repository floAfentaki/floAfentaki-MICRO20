#!/bin/bash

/usr/bin/time -f "time: \t%E" make dcsyn 
make sta
/usr/bin/time -f "time: \t%E" ./prune_scripts/eval.sh
grep -ri 'error' logs/

cp gate/top.sv gate/original.sv
