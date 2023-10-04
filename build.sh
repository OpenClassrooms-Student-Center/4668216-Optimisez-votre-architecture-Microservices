#!/bin/bash

cd microservice-commandes
mvn install
cd ..

cd microservice-produits
mvn install
cd ..

cd microservice-paiement
mvn install
cd ..