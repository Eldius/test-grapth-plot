FROM gitpod/workspace-full

RUN sudo apt-get update && \
    sudo apt-get upgreade -y && \
    sudo apt-get install -y && \
        libsdl2-dev && \
    sudo rm -rf /var/lib/apt/lists/* && \
    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.31.0 && \
    go get -v github.com/spf13/cobra/cobra
