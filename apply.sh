#!/bin/bash
cd Kubernetes


minikube kubectl -- create -f config-server-deployment.yaml
minikube kubectl -- create -f config-server-service.yaml

sleep 180

minikube kubectl -- create -f mproduits-deployment.yaml
minikube kubectl -- create -f mproduits-service.yaml

sleep 180

minikube kubectl -- create -f ingress-controller.yaml

# minikube kubectl -- create -f mpaiement-deployment.yaml
# minikube kubectl -- create -f mpaiement-service.yaml

# minikube kubectl -- create -f mcommandes-deployment.yaml
# minikube kubectl -- create -f mcommandes-service.yaml