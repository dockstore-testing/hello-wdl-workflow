version 1.0

task hello {
  command {
    echo 'Hello'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "quay.io/openshift-release-dev/ocp-release:4.12.0-0.nightly-multi-2022-08-22-130726"
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
    docker: "quay.io/skopeo/stable@sha256:5590c7d14c3511627300ede0bdef354d099bcfcf675abc2c0cbe5439a8d99a5b"
  }
}

workflow test {
  call hello
  call world
}
