version 1.0

task SamtoolsSort {
  input {
    File sam_file
}
string docker = "staphb/samtools:1.16"

command {
   samtools view -Sb ~{sam_file} > unsorted.bam
   samtools sort unsorted.bam -o sorted.bam
}

output {
  File sorted_bam = "sorted.bam"
}

runtime {
  docker: docker
  memory: "1G"
  cpu: 2
 }
}

