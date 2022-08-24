---
page_type: sample
languages:
- Java
- Python
- ASP.NET
products:
- Tanzu Application Platform
- Tanzu Postgres for Kubernetes
description: "Deploy Microservice Apps to Tanzu Application Platform"
urlFragment: "acme-fitness-store"
---

# Deploy Acme Fitness Store to Tanzu Application Platform

This application is composed of several services:

* 3 Java Spring Boot applications
  * A catalog service for fetching available products
  * A payment service for processing and approving payments for users' orders
  * An identity service for referencing the authenticated user

* 1 Python application
  * A cart service for managing a users' items that have been selected for purchase

* 1 ASP.NET Core applications
  * An order service for placing orders to buy products that are in the users' carts

* 1 HTML and Javascript application
  * A frontend shopping application

## What you will need

### Tanzu Application Platform

Before deploying Acme Fitness Store to TAP, the [prerequisites listed in the TAP 1.2 Getting Started Guide](https://docs.vmware.com/en/Tanzu-Application-Platform/1.2/tap/GUID-getting-started.html#getting-started-prerequisites-1) must be met. 

### Additional Operators

The following Kubernetes operators must be installed in the target cluster: 

* [Tanzu Postgres for Kubernetes Operator](https://docs.vmware.com/en/VMware-Tanzu-SQL-with-Postgres-for-Kubernetes/index.html) 
* [Spring Cloud Gateway for Kubernetes](https://docs.vmware.com/en/VMware-Spring-Cloud-Gateway-for-Kubernetes/index.html)

### Local tools

The following tools must be installed locally:

* [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
* [ytt](https://carvel.dev/ytt/)

### Additional Postgres configuration

The Tanzu Postgres for Kubernetes Operator requires some additional setup in each Kubernetes namespace where a Postgres database instance will be created, as [described in the documentation](https://docs.vmware.com/en/VMware-Tanzu-SQL-with-Postgres-for-Kubernetes/1.7/tanzu-postgres-k8s/GUID-create-delete-postgres.html). You will need a username and password for the image registry where the Tanzu Postgres images are stored. Once you have those credentials, run the following scripts to complete this setup: 

```shell
TANZU_REGISTRY_USERNAME=username TANZU_REGISTRY_PASSWORD=secret ./scripts/create-tanzu-registry-secret.sh
./scripts/create-postgres-service-biding-rbac.sh
```

## Deploying applications

Scripts in the `deploy/tap` directory can be used to deploy the Acme Fitness Store applications. 

First, run `deploy-servers.sh` to deploy shared infrastructure services that are used by the applications. 

Then, run `deploy-workloads.sh` to deploy the applications. 
