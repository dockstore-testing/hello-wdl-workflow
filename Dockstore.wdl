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
    docker: "quay.io/skopeo/stable@sha256:592f029fe812633ac7cff24f4548fa39c1976f29d18f4e0fb3dc2584de6231e2"
  }
}

workflow test {
  call hello
  call world
}
