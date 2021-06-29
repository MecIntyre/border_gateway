# -*- mode: ruby -*-

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/focal64"
    config.vm.provision "shell", path: "scripts/bootstrap.sh"
    config.vm.define "rt-b" do |rtb|
      rtb.vm.hostname = "rt-b"
      rtb.vm.network "private_network", ip: "192.168.100.2"
      rtb.vm.provider "virtualbox" do |vb|
        vb.name = "rt-b"
        vb.cpus = "2"
        vb.memory = "1024"
      end
      rtb.vm.provision "shell", path: "scripts/rtb-provision.sh"
    end
end