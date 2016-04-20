#!/usr/bin/env bash

apt-get update
apt-get install -y git

git clone https://github.com/basho/riak.git

cd riak

git checkout -v riak-2.1.3

make devrel
