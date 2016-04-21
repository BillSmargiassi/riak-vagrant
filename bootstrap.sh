#!/usr/bin/env bash

RVER=riak-2.1.3
DEVNODES=5

apt-get update
# Ubuntu dependencies
apt-get install -y build-essential libncurses5-dev openssl libssl-dev fop xsltproc unixodbc-dev
# PAM and SSH
apt-get install -y libpam0g-dev libssl0.9.8
# Install riak dependencies
apt-get install -y libc6-dev-i386 git

# Set number of files nice and high
cat /vagrant/limits.insert >> /etc/security/limits.conf

# Install Erlang
wget --no-verbose http://s3.amazonaws.com/downloads.basho.com/erlang/otp_src_R16B02-basho5.tar.gz
tar xzvf otp_src_R16B02-basho5.tar.gz
cd otp_src_R16B02-basho5
./configure
make
make install
cd ..

# Get riak
git clone https://github.com/basho/riak.git

cd riak

# checkoug a recent build
git checkout -b "${RVER}"

make devrel DEVNODES="=$DEVNODES"

cd ..

chown -R vagrant.vagrant otp_src_R16B02-basho5 riak

echo ******************************************************
echo *** Restarting instance to configure nofiles limit ***
echo ******************************************************
