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

ytt -f acme-identity-workload.yaml --data-value baseUrl="${APP_BASE_URL}" --data-value namespace="${NAMESPACE}" | kubectl apply -f-
kubectl apply -f acme-identity-gateway-route.yaml

kubectl apply -f acme-payment-workload.yaml
kubectl apply -f acme-payment-gateway-route.yaml

#kubectl apply -f acme-order-postgres.yaml
#kubectl apply -f acme-order-resource-claim.yaml
ytt -f acme-order-workload.yaml --data-value baseUrl="${APP_BASE_URL}" --data-value namespace="${NAMESPACE}" | kubectl apply -f-
kubectl apply -f acme-order-gateway-route.yaml

kubectl apply -f acme-catalog-postgres.yaml
kubectl apply -f acme-catalog-resource-claim.yaml
kubectl apply -f acme-catalog-workload.yaml
kubectl apply -f acme-catalog-gateway-route.yaml

ytt -f acme-cart-workload.yaml --data-value baseUrl="${APP_BASE_URL}" --data-value namespace="${NAMESPACE}" | kubectl apply -f-
kubectl apply -f acme-cart-gateway-route.yaml

kubectl apply -f acme-shopping-workload.yaml
kubectl apply -f acme-shopping-gateway-route.yaml
