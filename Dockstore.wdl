version 1.0

task hello {
  command {
    echo 'Hello world!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "quay.io/ga4gh-dream/dockstore-tool-helloworld@sha256:71c0f43d9081cb14411adae56773762b1e829f7175645484571dcb1c6e120d23"
  }
}

workflow test {
  call hello
}
