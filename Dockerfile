FROM ubuntu:26.04

# TODO: temporary solution until we have a better way to install the Jai compiler
WORKDIR /opt
COPY jai jai
RUN ln -s /opt/jai/bin/jai-linux /usr/local/bin/jai

WORKDIR /opt/test-runner
COPY . .
ENTRYPOINT ["/opt/test-runner/bin/run.sh"]
