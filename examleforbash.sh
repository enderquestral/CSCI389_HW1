#!/bin/bash

total = 1000000000
echo "# size_power time_per_iter"

for p in 'seq 8 24'
do
    size= 'echo 2^$p | bc'
    iters= 'echo $total/$size | bc'
    runtime= './a.out $size $iters | head-1 | awk '{print $5;}' '
    echo $p $runtime
done

#redirect to file via  ./file.sh > file.name