version 1.0

task hello {
  command {
    echo 'Hello world!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "quay.io/ga4gh-dream/dockstore-tool-helloworld@sha256:3a854fd1ebd970011fa57c8c099347314eda36cc746fd831f4deff9a1d433718"
  }
}

workflow test {
  call hello
}
