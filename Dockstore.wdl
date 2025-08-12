version 1.0

task hello {
  command {
    echo 'Hello world!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "ubuntu@sha256:7c06e91f61fa88c08cc74f7e1b7c69ae24910d745357e0dfe1d2c0322aaf20f9"
  }
}

workflow test {
  call hello
}
