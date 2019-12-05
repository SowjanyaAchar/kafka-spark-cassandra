#!/usr/bin/env bash


git clone https://github.com/shsh9888/kafka-on-kubernetes
git clone https://github.com/shsh9888/cassandra-on-kubernetes.git
git clone https://github.com/SowjanyaAchar/spark-on-kubernetes

mkdir -p build
cp kafka-on-kubernetes/*.yaml ./build/
cp cassandra-on-kubernetes/*.yaml ./build/
cp spark-on-kubernetes/*.yaml ./build/
cd build && kubectl create -f .
