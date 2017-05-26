# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

   config.vm.box = "debian/jessie64"
   config.vm.provision "shell", path: "script.sh"
   config.vm.network "forwarded_port", guest: 80, host: 8080
   config.vm.network "private_network", ip: "192.168.2.10"
   config.vm.provider "virtualbox" do |vb|
     vb.name="ujiandevops"
     vb.memory = "1024"
     vb.cpus= "1"
   end

end
