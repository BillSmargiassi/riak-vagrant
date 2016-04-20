#!/usr/bin/env bash

apt-get update
apt-get install -y make
apt-get install -y git

git clone https://github.com/basho/riak.git

cd riak

git checkout riak-2.1.3

make devrel
