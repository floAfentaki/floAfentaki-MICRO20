import sys
import numpy as np
from sklearn.metrics import accuracy_score, mean_squared_error
from joblib import dump, load
from parameters  import *

MINVAL=min(SIM_YLST)
MAXVAL=max(SIM_YLST)
def to_float(x,e):
    c = abs(x)
    sign = 1
    if x < 0:
        # convert back from two's complement
        c = x - 1
        c = ~c
        sign = -1
    f = (1.0 * c) / (2 ** e)
    f = f * sign
    return f

def to_fixed(f,e):
    a = f* (2**e)
    b = int(round(a))
    if a < 0:
        # next three lines turns b into it's 2's complement.
        b = abs(b)
        b = ~b
        b = b + 1
    return b

exp = sys.argv[1]
sim = sys.argv[2]

y_test=load(exp)
mpred=[]
f = open(sim, "r")
for ys in f:
    if SIM_REGRESSOR:
        y=to_float(int(ys),SIM_FRACTION_BITS)
        y=int(np.clip(round(y),MINVAL,MAXVAL))
    else:
        y=SIM_YLST[int(ys)]
    mpred.append(y)

#print(mpred)

print("accuracy: ", accuracy_score(mpred, y_test))
