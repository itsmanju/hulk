#!/bin/bash

# Reach home directory
cd

# Reach simulation directory
cd /home/manju/work/hulk


# Build simulation
scons build/Garnet_standalone/gem5.fast -j33

# Run simulation
./build/X86_MESI_Two_Level/gem5.fast 
 configs/example/garnet_synth_traffic.py 
 --network=garnet2.0 
 --inj-vnet=2 
 --num-cpus=64 --num-dirs=64 
 --topology=Mesh_XY --mesh-rows=8 
 --synthetic=uniform_random 
 --injectionrate=0.01
 --sim-cycles=50000000
