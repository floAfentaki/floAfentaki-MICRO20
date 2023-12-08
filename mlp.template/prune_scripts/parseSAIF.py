#!/usr/bin/python3
import sys
from joblib import dump, load
from parameters import *

#IN_NAME="inp"
#OUT_NAME="out"

saif=sys.argv[1]
out=sys.argv[2]

f= open(saif, "r")
readNet=False
readDut=False
line = f.readline()
totalTC=0
salist=[]
while line:
    if "INSTANCE DUT" in line:
        readDut=True
    elif "INSTANCE" in line and readDut:
        readDut=False
        break
    elif line.strip()=="(NET" and readDut:
        readNet=True
    elif line.strip()==")":
        line = f.readline()
        continue
    elif readNet:
        saifNet=line.split("(")[1].replace(" ","").replace("\\","").replace("\n","")
        line = f.readline()
        saifT0=int(line.split("(T0 ")[1].split(")")[0])
        saifT1=int(line.split("(T1 ")[1].split(")")[0])
        if (totalTC == 0) and (IN_NAME in saifNet):
               totalTC=saifT0+saifT1
        line = f.readline()
        saifTC=int(line.split("(TC ")[1].split(")")[0])
        if saifT0 >= saifT1:
               b,t=(0,saifT0)
        else:
               b,t=(1,saifT1)
        if not (IN_NAME in saifNet) and not (OUT_NAME in saifNet) and not (PRED_NAME in saifNet):
               salist.append((saifNet,b,t))
        #if "clk" in saifNet:
        #    totalTC = saifTC
    line = f.readline()
f.close()

axlist=[]
for (n,b,t) in salist:
	axlist.append((n,b,t/totalTC))

dump(axlist,out)
