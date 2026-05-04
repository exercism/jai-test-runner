FROM ubuntu:26.04

WORKDIR /usr/local/bin
ADD https://github.com/jqlang/jq/releases/download/jq-1.8.1/jq-linux-amd64 jq
RUN chmod +x jq

# TODO: temporary solution until we have a better way to install the Jai compiler
WORKDIR /opt
COPY jai jai
RUN ln -s /opt/jai/bin/jai-linux /usr/local/bin/jai

WORKDIR /opt/test-runner
COPY . .
ENTRYPOINT ["/opt/test-runner/bin/run.sh"]
