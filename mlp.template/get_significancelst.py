#!/usr/bin/python3
import sys
from joblib import dump, load
import os
import subprocess
from parameters import *
import math
import random

parsedSAIF=sys.argv[1]
threshold=float(sys.argv[2])
sig_threshold=int(sys.argv[3])
out_size=int(sys.argv[4])
sigfile=sys.argv[5]

salist=load(parsedSAIF)

netDict={}
for (n,b,t) in salist:
	if t >= threshold:
		el={n:[]}
		netDict.update(el)

MyList=[]
for line in open(sigfile, "r"):
    sList=line.split(",")
    wire=sList[0].strip()
    signif=[]
    if wire in netDict:
        for out in sList[1:]:
            indx=int(out.split("[")[1].split("]")[0])
            if indx != -999:
                   indx=indx%out_size
            signif.append(indx)
        if len(signif)!=0 and min(signif) >= 0:
            MyList.append(min(signif))


my_dict = {i:MyList.count(i) for i in MyList}
#print(my_dict)
for i in range(sig_threshold):
	if i in my_dict:
		print (i+1)

