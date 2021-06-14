version 1.0

task hello {
  command {
    echo 'Hello world!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "ubuntu:16.04"
  }
}

workflow test {
  call hello
}
