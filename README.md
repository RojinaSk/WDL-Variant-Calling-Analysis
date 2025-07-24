# Variant calling pipeline using WDL

This WDL pipeline aligns FASTQ files to a reference genome using BWA, processes the alignment using SAMtools, and performs variant calling using FreeBayes.

## Tools we will be using:
- BWA
- SAMtools
- FreeBayes
- Cromwell
- Docker

## To run:
```bash
# Run with Cromwell
java -jar cromwell.jar run workflows/vc_main.wdl --inputs inputs/data.json
