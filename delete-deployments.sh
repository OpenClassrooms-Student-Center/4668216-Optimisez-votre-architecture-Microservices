#!/bin/bash

# Get a list of all deployments and store them in a variable
deployments=$(minikube kubectl get deployments | awk 'NR>1 {print $1}')

# Loop through the deployments and delete each one
for deployment in $deployments; do
  minikube kubectl delete deployment $deployment
done
