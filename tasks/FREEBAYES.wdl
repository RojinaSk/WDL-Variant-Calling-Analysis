version 1.0 

task FreeBayes {
  input {
    File reference
    File bam_file
}

command {
  freebayes -f ~{reference} ~{bam_file} > variants.vcf
}

output {
  File vcf = "variants.vcf"
}

runtime {
   docker: docker
   memory: "4G"
   cpu: 2
 }
}

