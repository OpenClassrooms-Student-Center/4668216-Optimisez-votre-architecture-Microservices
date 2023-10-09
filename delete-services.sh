#!/bin/bash

# Delete all services in the default namespace (change namespace if needed)
kubectl delete services --all -n default