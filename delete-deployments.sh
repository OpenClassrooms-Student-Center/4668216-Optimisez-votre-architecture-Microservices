#!/bin/bash

# Get a list of all deployments and store them in a variable
deployments=$(kubectl get deployments -o jsonpath='{.items[*].metadata.name}')

# Loop through the deployments and delete each one
for deployment in $deployments; do
  kubectl delete deployment $deployment
done
