# Testing Anchore Enterprise 3.0 Locally
This directory has a local version of /kai and a quick script for installing anchore-enterprise locally.

## Pre-requirements
1. Docker dekstop installed locally and running docker-desktop Kube
1. license.yaml is copied into this directory
1. Helm3 installed locally

## Usage
```
./hack.sh [DOCKER-USER] [DOCKER-PASSWORD] [DOCKER-EMAIL] #Helm installs anchore enterprise and kai
./ports.sh # forwards ports on local host
```