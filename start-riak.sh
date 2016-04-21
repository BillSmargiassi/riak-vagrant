#!/usr/bin/env bash

cd riak/dev

echo "Starting Riak nodes…"

for node in dev*; do $node/bin/riak start; done

echo "Done."

echo "Pinging Riak nodes:"

for node in dev*; do $node/bin/riak ping; done
