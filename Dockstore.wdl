version 1.0

task hello {
  command {
    echo 'Hello!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "public.ecr.aws/ubuntu/ubuntu:18.04"
  }
}

task world {
  command {
    echo 'World!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "public.ecr.aws/bitnami/python@sha256:4584e7a7c2a420273254c6d1276fa139a4186162d08a308df282da4e0576d725"
  }
}

workflow test {
  call hello
  call world
}
