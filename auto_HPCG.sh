# function to create HPCG dat file
# $1 -> filename
# $2 $3 $4 -> problem size
# $5 -> test time
function create_hpcg_dat_file {
    echo "[$1 is creating]"
    filename=$1
    echo "HPCG benchmark input file
Sandia National Laboratories; University of Tennessee, Knoxville
$2 $3 $4
$5" >> ${filename}
    echo "[$filename create done]"
}

# delete hpcg.dat 
# create new hpcg.dat
# run hpcg
# $1 -> filename
function run_hpcg {
    echo "[now running $1]"
    filename=$1
    rm hpcg.dat
    mv ${filename} hpcg.dat
    echo "[begin running $filename]"
    mpirun -n 32 ./xhpcg >> ${filename}_log.txt
    echo "[$filename end]"
}

# main program
for ((i=100;i<250;i=i+10));
    do
        create_hpcg_dat_file "$i.txt" "$i" "$i" "$i" "30"
        run_hpcg "$i.txt"
    done
