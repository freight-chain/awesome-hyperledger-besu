#!/bin/bash -e

curl -L "https://hyperledger-org.bintray.com/besu-repo/besu-1.4.5.tar.gz" -o besu.tar.gz
echo "downloaded besu..."
tar -xzvf besu.1.4.5.tar.gz
echo "installing...."
cp -rf besu.1.4.5 ./opt/besu
cd /opt/besu
