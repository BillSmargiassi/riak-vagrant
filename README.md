# Riak Vagrant Instance

## Purpose

Create a 5 node Riak cluster in an Ubuntu Vagrant instance.

## Sources

* hashicorp/precise64 box
* Erlang from Basho's source distribution on Amazon S3
* Clones https:/github.com/basho/riak.git

## Required plugins

This Vagrantfile requires the vagrant-reload plugin. Load it using:

> `vagrant plugin install vagrant-reload`
