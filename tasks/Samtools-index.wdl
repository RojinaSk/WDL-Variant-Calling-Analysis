version 1.0

task SamtoolsIndex {
  input {
    File bam_file
}

String docker = "staphb/samtools:1.16"

command {
   samtools index ~{bam_file}
}

output {
   File bai = "~{bam_file}.bai"
}

runtime {
  docker: docker
  memory: "1G"
  cpu: 1
 }
}

