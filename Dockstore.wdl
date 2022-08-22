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
    docker: "quay.io/skopeo/stable@sha256:656733c60ea7a8e45f2c7f0c86b24fc9f388d44c5a7d6d482ec59fbabcdb4eee"
  }
}

workflow test {
  call hello
  call world
}
