version 1.0

task BwaMem {
  input {
    String project_name
    File reference
    File fastq_1
    File fastq_2
}

command {
  bwa mem ~{reference} ~{reads_1} ~{reads_2} > aligned.sam
}

output {
  File sam = "aligned.sam"
}

runtime {
  docker: docker
  memory: "1G"
  cpu: 2
  disks: "local-disk 1HDD"
}
}
