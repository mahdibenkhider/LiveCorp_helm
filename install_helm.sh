#!/bin/bash

# Installer Socat
sudo apt-get update
sudo apt-get install -y socat

# Télécharger la dernière version de Helm
curl -Lo /tmp/helm-linux-amd64.tar.gz https://get.helm.sh/helm-v3.9.0-linux-amd64.tar.gz

# Décompresser le fichier téléchargé
tar -xvf /tmp/helm-linux-amd64.tar.gz -C /tmp/

# Déplacer l'exécutable de Helm dans le chemin d'accès
sudo mv /tmp/linux-amd64/helm /usr/local/bin/

# Vérifier l'installation
helm version