#!/usr/bin/env bash

DEVNODES=5

cd riak/dev

for node in {2..5}; do echo dev$node; dev${node}/bin/riak-admin cluster join dev1@127.0.0.1; done

dev1/bin/riak-admin cluster plan
dev2/bin/riak-admin cluster commit

dev1/bin/riak-admin member-status
