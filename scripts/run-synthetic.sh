#!/bin/bash

# Reach home directory
cd

# Reach simulation directory
cd /home/manju/work/hulk


# Build simulation
scons build/Garnet_standalone/gem5.fast -j33

# Run simulation
./build/Garnet_standalone/gem5.fast \
configs/example/betar_synth_traffic.py \
--num-cpus=16 \
--num-dirs=16 \
--topology=Mesh_XY \
--mesh-rows=4 \
--network=garnet2.0 \
--sim-cycles=50000000 \
--routing-algorithm=1 \
--inj-vnet=0 \
--synthetic=uniform_random \
--injectionrate=0.1 \
--outdir=m5out/16c/synthetic/random/0_1