#!/bin/bash

set -eou pipefail

cat <<EOF | kubectl apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  name: resource-claims-postgres
  labels:
    resourceclaims.services.apps.tanzu.vmware.com/controller: "true"
rules:
- apiGroups: ["sql.tanzu.vmware.com"]
  resources: ["postgres"]
  verbs: ["get", "list", "watch", "update"]
EOF