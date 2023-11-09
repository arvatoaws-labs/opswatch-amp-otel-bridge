FROM ghcr.io/arvatoaws-labs/fedora:39

RUN dnf install -y gettext
ADD det-arch.sh /usr/local/bin
RUN dnf install -y https://aws-otel-collector.s3.amazonaws.com/redhat/`det-arch.sh a r`/v0.35.0/aws-otel-collector.rpm

ADD otel-config.yaml /sample-otel-config.yaml
ADD entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]