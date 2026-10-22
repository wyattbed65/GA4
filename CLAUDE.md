# Practice RNA-Seq project

Practice project for the course PLNTPTH 5006, using RNA-Seq data from
Garrigós et al. (2025) on *Culex pipiens* mosquitoes
infected with two avian *Plasmodium* species.

## Data

- The FASTQ files are in `../garrigos/fastq`:
  paired-end, ~75-bp Illumina reads for 22 samples,
  subsampled to 500,000 reads per file, with names like `S63_R1.fastq.gz`
- Sample metadata is in `../garrigos/meta/metadata.tsv`
- Never modify, move, or delete anything in `../garrigos`

## Dirs

- `scripts/`: shell scripts
- `results/`: all output, in a separate subdir for each step (e.g. `results/fastqc`)

## Software

- We work at the Ohio Supercomputer Center (OSC)
- Run programs with Apptainer containers from Seqera Containers (`oras://` URLs),
  not with `module load` or by installing them
- Don't use multi-threading options unless asked

## Shell script conventions

- Start scripts with `#!/bin/bash` and `set -euo pipefail`
- Below that, add a comment block with the script's purpose and a usage line
  (e.g. `# Usage: bash scripts/fastqc.sh <FASTQ file> <output dir>`)
- Copy arguments to descriptively named, lowercase variables (e.g. `fastq="$1"`);
  use uppercase only for constants (e.g. `CONTAINER=...`)
- At the start, report the script name, the date, and the inputs;
  at the end, report the program version, a success message, and the date
- Create output dirs with `mkdir -p` before writing to them

## AI diary

- After completing a task, add an entry at the bottom of `doc/ai/ai-diary.md`
  with the date, what I asked for, which files you created or changed,
  and any key findings and decisions (including alternatives that were rejected)
- Keep entries short
