#!/bin/bash

echo "Installing Anchore Enterprise..."
kubectl create secret docker-registry anchore-enterprise-pullcreds --docker-server="docker.io" --docker-username="$1" --docker-password="$2"  --docker-email="$3"
kubectl create secret generic anchore-enterprise-license --from-file='license.yaml=license.yaml'
helm install anchore -f test-values.yaml anchore/anchore-engine
cd kai
echo "Building and Installing kai..."
docker build . -t localhost/kai:latest && helm install kai helm/kai

echo "When install completes run ./ports.sh"

