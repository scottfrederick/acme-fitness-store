#!/bin/bash

set -eou pipefail

kubectl apply -f gateway.yaml

kubectl apply -f acme-payment-workload.yaml

#kubectl apply -f acme-order-postgres.yaml
#kubectl apply -f acme-order-resource-claim.yaml
#kubectl apply -f acme-order-workload.yaml
#kubectl apply -f acme-order-gateway-route.yaml

kubectl apply -f acme-catalog-postgres.yaml
kubectl apply -f acme-catalog-resource-claim.yaml
kubectl apply -f acme-catalog-gateway-route.yaml
kubectl apply -f acme-catalog-workload.yaml

kubectl apply -f acme-cart-gateway-route.yaml
kubectl apply -f acme-cart-workload.yaml

kubectl apply -f acme-shopping-workload.yaml
kubectl apply -f acme-shopping-gateway-route.yaml
