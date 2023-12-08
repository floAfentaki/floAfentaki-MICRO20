import os
import sys


if __name__=="__main__":
    directory="ETS_axAcc"
    subfolders= [f.path for f in os.scandir(directory) if f.is_dir()]
    for folder in subfolders:
        dataset = folder.split("/")[1]
        # print(dataset)
        os.system(f"./runWrapper.sh {dataset}") 
        # break

