eval "$(conda shell.bash hook)"

start=`date +%s`
./gen_mlp_synproj.sh $1 $2 
cd "synthesis/"$1
make all
end=`date +%s`

echo Execution time was `expr $end - $start` seconds.