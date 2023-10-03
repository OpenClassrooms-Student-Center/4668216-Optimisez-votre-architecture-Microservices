#!/bin/bash

cd microservice-produits
mvn install
cd ..

cd microservice-paiement
mvn install
cd ..

cd microservice-commandes
mvn install
cd ..