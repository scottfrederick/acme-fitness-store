#!/bin/bash

set -eou pipefail

kubectl delete -f acme-identity-workload.yaml
kubectl delete -f acme-identity-gateway-route.yaml

kubectl delete -f acme-payment-workload.yaml

#kubectl delete -f acme-order-postgres.yaml
#kubectl delete -f acme-order-resource-claim.yaml
kubectl delete -f acme-order-workload.yaml
kubectl delete -f acme-order-gateway-route.yaml

kubectl delete -f acme-catalog-postgres.yaml
kubectl delete -f acme-catalog-resource-claim.yaml
kubectl delete -f acme-catalog-gateway-route.yaml
kubectl delete -f acme-catalog-workload.yaml

kubectl delete -f acme-cart-gateway-route.yaml
kubectl delete -f acme-cart-workload.yaml

kubectl delete -f acme-shopping-workload.yaml
kubectl delete -f acme-shopping-gateway-route.yaml
