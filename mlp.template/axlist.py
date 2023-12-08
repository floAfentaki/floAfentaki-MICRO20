#!/usr/bin/python3
import sys
from joblib import dump, load
import os
import subprocess
from parameters import *
import math
import random
#os.environ['SCDIR']="./prune_scripts"

scdir=os.getenv('SCDIR')
SHSCRIPT= scdir+"/prsta.sh"
NETFILE=scdir+"/axcandidates"
SIGFILE=scdir+"/../significance"

parsedSAIF=sys.argv[1]
threshold=float(sys.argv[2])
sig_threshold=int(sys.argv[3])
out_size=int(sys.argv[4])
generateSig=sys.argv[5].lower() in 'true'
netlist=sys.argv[6]
axnetlist=sys.argv[7]

salist=load(parsedSAIF)

PRED_SIZE=out_size

netDict={}
lst=[]

for (n,b,t) in salist:
	if t >= threshold:
		el={n:b}
		netDict.update(el)
		#print(str(n)+","+str(b))
		lst.append(n)


if generateSig:
    random.shuffle(lst)
    threads=PT_THREADS
    n=math.ceil(len(lst)/threads)
    for j,printL in enumerate([lst[i:i + n] for i in range(0, len(lst), n)]):
	    #print(printL)
	    myIN=NETFILE+str(j)+'.tcl'
	    f=open(myIN,'w')
	    f.write("# nets "+str(threshold)+' : '+str(len(printL))+'\n')
	    s='set '+PT_NETS_LIST+' "'+' '.join(printL)+'"'
	    f.write(s+'\n')
	    printL=list(PRED_NAME+'['+str(p*PRED_SIZE+x)+']' for p in range(PRED_NUM) for x in range(sig_threshold,out_size))
	    s='set '+PT_OUTPUTS_LIST+' "'+' '.join(printL)+'"'
	    f.write(s)
	    f.close()
    
    processes = []
    for j in range(threads):
	    myIN=NETFILE+str(j)+'.tcl'
	    myOUT=SIGFILE+str(j)
	    if generateSig:
		    p=subprocess.Popen([SHSCRIPT, myIN, myOUT, PRED_NAME, str(j) ], stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)
		    processes.append(p)
   
    f=open(SIGFILE,'w')
    for j in range(threads):
	    p=processes[j]
	    p.wait()
	    myOUT=SIGFILE+str(j)
	    ptFile=open(myOUT,'r')
	    f.write(ptFile.read())
	    ptFile.close()
    f.close()

axdict={}
for line in open(SIGFILE, "r"):
    sList=line.split(",")
    wire=sList[0].strip()
    signif=[-1]
    for out in sList[1:]:
        indx=int(out.split("[")[1].split("]")[0])
        if indx != -999:
               indx=indx%out_size
        signif.append(indx)
    if wire in netDict:
	    b = netDict[wire]
	    if (max(signif) < sig_threshold) and min(signif) >= -1:
		    print(str(wire)+","+str(b))
		    axdict.update({wire:b})
fin=open(netlist,'r')
fout=open(axnetlist,'w')
STR=".Y("
for line in fin:
	newLine=line
	if STR in line:
		net=line.split(STR)[1].split(')')[0].strip()
		if net in axdict:
			newLine=line.replace(STR+net+')',STR+')')
	elif 'endmodule' in line:
		for net in axdict:
			fout.write("  assign " + net + " = 1'b" +str(axdict[net])+";\n")
	fout.write(newLine)
fin.close()
fout.close()
