#!/bin/bash

set -eou pipefail

kubectl apply -f postgres-resource-claim-rbac.yaml