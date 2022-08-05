#!/bin/bash


if ! command -v kubectl &> /dev/null; then
    echo "'kubectl' is required to run this script"
    exit 1
fi

if ! command -v ytt &> /dev/null; then
    echo "'ytt' is required to run this script"
    exit 1
fi

if [[ -z ${APP_BASE_URL} ]]; then
    echo "environment variable APP_BASE_URL must be set to run this script"
    exit 1
fi

NAMESPACE=$(kubectl config view --minify --output 'jsonpath={..namespace}')
NAMESPACE=$([ -n "${NAMESPACE}" ] && echo "${NAMESPACE}" || echo "default")

set -eou pipefail

for file in authserver.yaml gateway-credentials.yaml gateway.yaml
do
    ytt -f ${file} --data-value baseUrl="${APP_BASE_URL}" --data-value namespace="${NAMESPACE}" | kubectl apply -f-
done