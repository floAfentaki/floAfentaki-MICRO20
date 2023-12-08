import sys
from sklearn.model_selection import train_test_split
from datasets.read_all_datasets import RedWine, WhiteWine, Cardio, HAC, Pendigits, Arrhythmia, GasID
from joblib import dump, load

from sklearn.neural_network import MLPClassifier, MLPRegressor
from sklearn.metrics import accuracy_score, mean_squared_error
from sklearn.preprocessing import StandardScaler, LabelEncoder, MinMaxScaler
import torch

import numpy as np
# import warea as wa
import math
from convfxp import ConvFxp
from mlp_fxp_ps import mlp_fxp_ps
from write_mlp_verilog import write_mlp_verilog

def eval_reg(ytr, yte, mpred):
    new_preds=[]
    for reg_pred in mpred:
        new_preds.append(min(max(ytr),max(min(ytr),round(reg_pred))))
    print("new accuracy score: ", accuracy_score(new_preds, yte))

def eval_class(yte, mpred):
    print("new accuracy score: ", accuracy_score(mpred, yte))

def get_maxabs (l):
    return max(max(abs(np.reshape(n, -1))) for n in l)

def get_max (l):
    return max(max(np.reshape(n, -1)) for n in l)

def get_min (l):
    return min(min(np.reshape(n, -1)) for n in l)

def get_width (a):
    b=math.floor(a)
    return b.bit_length()
    #return math.ceil(math.log(a,2))


def convertCoef (mdata, fxp, toFP):
 transp=[np.transpose(i).tolist() for i in mdata]
 coefficients=[]
 for i, l in enumerate(transp):
    newn=list()
    for j,n in enumerate(l):
        neww=list()
        for k,w in enumerate(n):
            if toFP:
                neww.append(fxp.to_float(w))
            else:
                neww.append(fxp.to_fixed(w))
        newn.append(neww)
    coefficients.append(newn)
 return coefficients

#similar to the above, should be combined
def convertIntercepts (mdata, lfxp, toFP):
 transp=[np.transpose(i).tolist() for i in mdata]
 intercepts=[]
 for i, l in enumerate(transp):
        fxp=lfxp[i]
        neww=list()
        for k,w in enumerate(l):
            if toFP:
                neww.append(fxp.to_float(w))
            else:
                neww.append(fxp.to_fixed(w))
        intercepts.append(neww)
 return intercepts



dataset = sys.argv[1]
mfile = sys.argv[2]

dataset_name = dataset

#print(algo)
if dataset_name in ['Acute']:
  dataset = torch.load("./datasets_ets/data/Dataset_acuteinflammation.ds")
elif dataset_name in ['Balance_Scale']:
  dataset = torch.load("./datasets_ets/data/Dataset_balancescale.ds")
elif dataset_name in ['Breast_Cancer']:
  dataset = torch.load("./datasets_ets/data/Dataset_breastcancerwisc.ds")
elif dataset_name in ['Cardio']:
  dataset = torch.load("./datasets_ets/data/Dataset_cardiotocography3clases.ds")
elif dataset_name in ['Energy1']:
  dataset = torch.load("./datasets_ets/data/Dataset_energyy1.ds")
elif dataset_name in ['Energy2']:
  dataset = torch.load("./datasets_ets/data/Dataset_energyy2.ds")
elif dataset_name in ['Iris']:
  dataset = torch.load("./datasets_ets/data/Dataset_iris.ds")
elif dataset_name in ['Mammographic']:
  dataset = torch.load("./datasets_ets/data/Dataset_mammographic.ds")
elif dataset_name in ['Pendigits']:
  dataset = torch.load("./datasets_ets/data/Dataset_pendigits.ds")
elif dataset_name in ['Seeds']:
  dataset = torch.load("./datasets_ets/data/Dataset_seeds.ds")
elif dataset_name in ['Tic_tac_toe']:
  dataset = torch.load("./datasets_ets/data/Dataset_tictactoe.ds")
elif dataset_name in ['Vertebral_Column_2C']:
  dataset = torch.load("./datasets_ets/data/Dataset_vertebralcolumn2clases.ds")
elif dataset_name in ['Vertebral_Column_3C']:
  dataset = torch.load("./datasets_ets/data/Dataset_vertebralcolumn3clases.ds")
elif dataset_name in ['RedWine']:
  dataset = torch.load("./datasets_ets/data/Dataset_vertebralcolumn3clases.ds")
else: assert(False)

X_train = np.array(dataset["X_train"])
X_test = np.array(dataset["X_test"])
Y_train = np.array(dataset["y_train"])
Y_test = np.array(dataset["y_test"])

#scaler = StandardScaler()
scaler = MinMaxScaler(feature_range=(0,1))
scaler.fit(X_train)

X_train = scaler.transform(X_train)
X_test =  scaler.transform(X_test)
model = load(mfile)


#4 bit fraction for inputs
INP_FRAC=4
#8 bit weights
W_WIDTH=8
# trunc 1st relu
L0trunc=5
trlst=[0,L0trunc]

inpfxp=ConvFxp(0,0,INP_FRAC)

#I use the same representation for all the weights --> suboptimal
w_int=get_width(get_maxabs(model.coefs_))
w_frac=W_WIDTH-1-w_int
wfxp=ConvFxp(1,w_int,w_frac)

bfxp=[]
for i,c in enumerate(model.intercepts_):
    b_int=get_width(get_maxabs(c))
    bfxp.append(ConvFxp(1,b_int,inpfxp.frac+(i+1)*wfxp.frac-trlst[i]))


print("Input fxp:", inpfxp.get_fxp())
print("Weights fxp:", wfxp.get_fxp())
print("Intercepts fxp:", [bfxp[i].get_fxp() for i in range(len(bfxp))])

intercepts=convertIntercepts(model.intercepts_,bfxp,False)
coefficients=convertCoef(model.coefs_,wfxp,False)

#uncomment to check the fxp values
'''
print("FXP INTERCEPTS (TRANSP):", intercepts)
print("FP INTERCEPTS:",[i.tolist() for i in model.intercepts_])
print("FPFXP INTERCEPTS:",convertIntercepts(intercepts,bfxp,True))
print("FXP WEIGHTS (TRANP)",coefficients)
print("FP WEIGHTS:",[i.tolist() for i in model.coefs_]) 
print("FPFXP WEIGHTS:",convertCoef(coefficients,wfxp,True))
'''

y_test = Y_test
y_train = Y_train

pred=model.predict(X_test)
if "MLPRegressor" in str(type(model)):
        pred=np.clip(np.round(pred),min(y_test),max(y_test))
print("ACCURACY W/ MODEL:", accuracy_score(pred, y_test))


mlpfx=mlp_fxp_ps(coefficients,intercepts,inpfxp,wfxp,L0trunc,y_train,model)
mlpfx.get_accuracy(X_test,y_test)
print("ACCURACY W/ MLPFX", mlpfx.get_accuracy(X_test,y_test))

f=open(dataset_name+"_exact.v", 'w')
# f=open("exact.v", 'w')
actlst,outsize=write_mlp_verilog(f,inpfxp.get_width(), L0trunc, wfxp.get_width(), intercepts, coefficients)
print("Bitwidth of activations:", actlst[:-1] )
print("chech the .v from python3 syn_project.py $dataset $joblib_path\n this is lower!!")
