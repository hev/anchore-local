#!/bin/bash

kubectl port-forward deployment/anchore-anchore-engine-enterprise-ui 3000 &
kubectl port-forward deployment/anchore-anchore-engine-api 8228 &
kubectl port-forward deployment/anchore-anchore-engine-catalog 8082