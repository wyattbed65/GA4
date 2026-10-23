#!/bin/bash

set -euo pipefail

#Trim Galore Container

CONTAINER=oras://community.wave.seqera.io/library/trim-galore:2.3.0--a56e49e832976df4

#Arguments

r1: "$1"
r2: "$2"
outdir: "$3"

#Make a directory

mkdir -p "$3"

echo Starting Trim Galore

apptainer exec "$CONTAINER" trim_galore --paired --fastqc "$1" "$2" --output_dir "$3"

echo Finish Trim Galore