# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :reload   # reboot for the nofiles limit
  config.vm.provision :shell, inline: "su -c /vagrant/start.riak.sh vagrant"
  config.vm.provision :shell, inline: "su -c /vagrant/make-cluster.sh vagrant"
end
