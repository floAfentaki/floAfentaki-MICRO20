#!/bin/bash

for joblib in models/*; do
    echo $joblib
    A="$(cut -d'/' -f2 <<<"$joblib")"
    dataset="$(cut -d'.' -f1 <<<"$A")"
    echo "$dataset"

    screenName="${dataset}"
    screen -S $screenName -d -m bash
    screen -r $screenName -X stuff "./run.sh $dataset $joblib"$(echo -ne '\015')
done