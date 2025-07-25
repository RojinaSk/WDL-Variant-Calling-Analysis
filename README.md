# Variant calling pipeline using WDL

This WDL pipeline aligns FASTQ files to a reference genome using BWA, processes the alignment using SAMtools, and performs variant calling using FreeBayes.

## Tools we will be using:
- BWA
- SAMtools
- FreeBayes
- Cromwell
- Docker

## Data download
- Reference download (Chr22 only from Ensemble)
```
bash
wget ftp://ftp.ensembl.org/pub/release-110/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.chromosome.22.fa.gz
```

- Fastq dataset from Genome in a Bottle (GIAB) Project

```
wget https://ftp-trace.ncbi.nlm.nih.gov/giab/ftp/data/NA12878/NIST_NA12878_HG001_HiSeq_300x/RG001-NIST-NA12878_HiSeq_300x_R1_chr22.fastq.gz
wget https://ftp-trace.ncbi.nlm.nih.gov/giab/ftp/data/NA12878/NIST_NA12878_HG001_HiSeq_300x/RG001-NIST-NA12878_HiSeq_300x_R2_chr22.fastq.gz
```

## To run:
```bash
# Run with Cromwell
java -jar cromwell.jar run workflows/vc_main.wdl --inputs inputs/data.json
