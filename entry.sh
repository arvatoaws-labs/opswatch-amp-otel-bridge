#!/bin/bash

echo "Starting Otel"

cat /sample-otel-config.yaml | envsubst > /generated-otel-config.yaml

cat /generated-otel-config.yaml

/opt/aws/aws-otel-collector/bin/aws-otel-collector --config=/generated-otel-config.yaml