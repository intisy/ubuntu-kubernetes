#!/bin/bash

args=$@
pat=$1
sha=$2

echo2() {
  echo -e "\033[0;33m$@\033[0m"
}

echo2 "Setting up using options: $@"
echo2 "Installing Ubuntu"
kubectl apply -f - <<OEF
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ubuntu
  labels:
    app: ubuntu
spec:
  replicas: 1
  selector:
    matchLabels:
      app: ubuntu
  template:
    metadata:
      labels:
        app: ubuntu
    spec:
      containers:
      - name: ubuntu
        image: ubuntu:latest
        command: ["sleep", "infinity"]
OEF
