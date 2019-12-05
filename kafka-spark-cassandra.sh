#!/usr/bin/env bash


git clone https://github.com/SowjanyaAchar/kafka-on-kubernetes
git clone https://github.com/SowjanyaAchar/cassandra-on-kubernetes.git
git clone https://github.com/SowjanyaAchar/spark-on-kubernetes

mkdir -p build
cp kafka-on-kubernetes/*.yaml ./build/
cp cassandra-on-kubernetes/*.yaml ./build/
cp spark-on-kubernetes/*.yaml ./build/
cd build && kubectl create -f .

kubectl create deployment logger --image=gcr.io/labkube-259722/log:2.0
kubectl expose deployment logger --type=LoadBalancer --port 5000 --target-port 5000
