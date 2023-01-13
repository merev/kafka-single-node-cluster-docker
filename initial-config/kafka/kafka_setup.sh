#!/bin/bash

echo "* Add any prerequisites ..."
apt-get update -y && apt-get install -y python3 python3-pip openjdk-17-jre

echo "* Add kafka-python ..."
pip3 install kafka-python

echo "* Import the compose configuration ..."
mkdir /home/vagrant/kafka-config
cp /shared/kafka/docker-compose.yaml /home/vagrant/kafka-config

echo "* Run the kafka cluster ..."
docker-compose -f kafka/docker-compose.yaml up -d











