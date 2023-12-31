import sys
import numpy as np
# import math

class ConvFxp:
    def __init__(self, sign, integer, fraction):
        self.s=sign
        self.int=integer
        self.frac=fraction
        if integer<0 or fraction<0:
            print("invalid fxp",integer, fraction)
            sys.exit()
    def get_width(self):
        return (self.s + self.int + self.frac)

    def get_fxp(self):
        return (self.s, self.int, self.frac)

    def to_float(self,x):
        return to_float(x,self.frac)

    def to_fixed(self, f):
        b=to_fixed(f,self.frac)
        maxval=1<<(self.int+self.frac)
        b=np.clip(b,-1*self.s*maxval,maxval-1)
        return int(b)
        


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

