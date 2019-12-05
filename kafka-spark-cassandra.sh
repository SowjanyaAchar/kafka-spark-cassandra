#!/usr/bin/env bash


git clone https://github.com/SowjanyaAchar/kafka-on-kubernetes.git
git clone https://github.com/SowjanyaAchar/cassandra-on-kubernetes.git
git clone https://github.com/SowjanyaAchar/spark-on-kubernetes.git

mkdir -p build
cp kafka-on-kubernetes/*.yaml ./build/
cp cassandra-on-kubernetes/*.yaml ./build/
cp spark-on-kubernetes/*.yaml ./build/
cd build && kubectl create -f .

