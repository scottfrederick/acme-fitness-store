#!/bin/bash

set -eou pipefail

kubectl apply -f acme-payment-workload.yaml

#kubectl apply -f acme-order-postgres.yaml
#kubectl apply -f acme-order-resource-claim.yaml
#kubectl apply -f acme-order-workload.yaml

kubectl apply -f acme-catalog-postgres.yaml
kubectl apply -f acme-catalog-resource-claim.yaml
kubectl apply -f acme-catalog-workload.yaml

kubectl apply -f acme-cart-workload.yaml

kubectl apply -f acme-shopping-workload.yaml
