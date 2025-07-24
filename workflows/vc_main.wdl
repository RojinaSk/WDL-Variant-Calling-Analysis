version 1.0

import "../tasks/BWA_MEM.wdl"
import "../tasks/Samtools_Sort.wdl"
import "../tasks/Samtools_index.wdl"
import "../tasks/FREEBAYES.wdl"

workflow variantcallingworkflow {
input {
    String project_name
    File reference
    File fastq_1
    File fastq_2
}

call BwaMem {
  input: 
    reference = reference
    fastq_1 = fastq_1
    fastq_2 = fastq_2
}

call SamtoolsSort {
  input:
     sam_file = BwaMem.sam
}

call SamtoolsIndex {
  input:
      bam_file = SamtoolsSort.sorted_bam
}

call Freebayes {
  input:
    reference = reference
    bam_file = SamtoolsSort.sorted_bam
}

output {
  File sorted_bam = SamtoolsSort.sorted.bam
  File bai = SamtoolsIndex.bai
  File vcf = Freebayes.vcf
 }
}


