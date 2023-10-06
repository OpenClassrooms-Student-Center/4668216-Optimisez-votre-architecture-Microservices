
#!bin/bash

cd Kubernetes

kubectl apply -f config-server-deployment.yaml
kubectl apply -f config-server-service.yaml

kubectl apply -f mproduits-deployment.yaml
kubectl apply -f mproduits-service.yaml

kubectl apply -f mpaiement-deployment.yaml
kubectl apply -f mpaiement-service.yaml

kubectl apply -f config-server.yaml
kubectl apply -f config-server.yaml