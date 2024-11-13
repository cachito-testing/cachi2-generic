FROM ibmjava:11-jdk

WORKDIR /tmp

RUN jar -xvf /tmp/cachi2-output/deps/generic/dependency-check.zip

RUN chmod +x /tmp/dependency-check/bin/dependency-check.sh

ENTRYPOINT ["/tmp/dependency-check/bin/dependency-check.sh", "--version"]

