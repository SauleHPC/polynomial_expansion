#!/bin/bash

host=cci-hopper2 #probably take that off commandline at some point


resdir=../results/${host}/

FLOPSFORMULA='$1 \* ($2 +1)/$3'

# times 2 cause mul and add
peak_flops=$( awk -F \  '{if ($2 == 32768){ print 2 * $1 * ($2 +1)/$3;}}'  < ${resdir}/basic_gpu_bench )

# times 2 cause read and write
# times 4 cause FP32
gpu_bandwidth=$( awk -F \  '{if ($2 == 0){ print 2 * $1 *  4 / $3;}}'  < ${resdir}/basic_gpu_bench )

interconnect_bandwidth=$(awk -F \  'BEGIN{maxv=0} {if ($2 == 0){bw = ($1 + $2 +1)*4*2 / $3; if (bw > maxv) {maxv = bw;}}} END{print maxv;}' < ${resdir}/gpu_stream )

echo $peak_flops $gpu_bandwidth $interconnect_bandwidth



