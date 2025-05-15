#!/bin/bash

# Reach home directory
cd

# Reach simulation directory
cd /home/manju/work/hulk

# Build simulation
scons build/X86_MESI_Two_Level/gem5.fast -j 33

# Run simulation

# SPEC CPU2006: cactusADM
./build/X86_MESI_Two_Level/gem5.fast \
configs/example/se.py \
--num-cpus=16 \
--topology=Mesh_XY \
--mesh-rows=4 \
--network=garnet2.0 \
--routing-algorithm=1 \
--ruby -F 1000000000 -W 500000000 -I 50000000 \
--bench=cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM \
--outdir=m5out/16c/real/cactusADM

# SPEC CPU2006: astar
./build/X86_MESI_Two_Level/gem5.fast \
configs/example/se.py \
--num-cpus=16 \
--topology=Mesh_XY \
--mesh-rows=4 \
--network=garnet2.0 \
--routing-algorithm=1 \
--ruby -F 1000000000 -W 500000000 -I 50000000 \
--bench=astar-astar-astar-astar-astar-astar-astar-astar-astar-astar-astar-astar-astar-astar-astar-astar \
--outdir=m5out/16c/real/astar

# SPEC CPU2006: GemsFDTD
./build/X86_MESI_Two_Level/gem5.fast \
configs/example/se.py \
--num-cpus=16 \
--topology=Mesh_XY \
--mesh-rows=4 \
--network=garnet2.0 \
--routing-algorithm=1 \
--ruby -F 1000000000 -W 500000000 -I 50000000 \
--bench=GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD-GemsFDTD \
--outdir=m5out/16c/real/GemsFDTD

# SPEC CPU2006: High-Medium
./build/X86_MESI_Two_Level/gem5.fast \
configs/example/se.py \
--num-cpus=16 \
--topology=Mesh_XY \
--mesh-rows=4 \
--network=garnet2.0 \
--routing-algorithm=1 \
--ruby -F 1000000000 -W 500000000 -I 50000000 \
--bench=GemsFDTD-GemsFDTD-xalancbmk-xalancbmk-astar-astar-omnetpp-omnetpp-GemsFDTD-GemsFDTD-xalancbmk-xalancbmk-astar-astar-omnetpp-omnetpp \
--outdir=m5out/16c/real/HM

# SPEC CPU2006: Medium-Low
./build/X86_MESI_Two_Level/gem5.fast \
configs/example/se.py \
--num-cpus=16 \
--topology=Mesh_XY \
--mesh-rows=4 \
--network=garnet2.0 \
--routing-algorithm=1 \
--ruby -F 1000000000 -W 500000000 -I 50000000 \
--bench=astar-perlbench-omnetpp-cactusADM-astar-perlbench-omnetpp-cactusADM-astar-perlbench-omnetpp-cactusADM-astar-perlbench-omnetpp-cactusADM \
--outdir=m5out/16c/real/ML

# SPEC CPU2006: Low-High
./build/X86_MESI_Two_Level/gem5.fast \
configs/example/se.py \
--num-cpus=16 \
--topology=Mesh_XY \
--mesh-rows=4 \
--network=garnet2.0 \
--routing-algorithm=1 \
--ruby -F 1000000000 -W 500000000 -I 50000000 \
--bench=perlbench-GemsFDTD-cactusADM-xalancbmk-perlbench-GemsFDTD-cactusADM-xalancbmk-perlbench-GemsFDTD-cactusADM-xalancbmk-perlbench-GemsFDTD-cactusADM-xalancbmk \
--outdir=m5out/16c/real/LH