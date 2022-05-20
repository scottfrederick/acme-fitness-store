#!/bin/bash

set -eou pipefail

kubectl create secret docker-registry tanzu-image-registry \
  --docker-server registry.tanzu.vmware.com \
  --docker-username ${TANZU_REGISTRY_USERNAME} \
  --docker-password ${TANZU_REGISTRY_PASSWORD}