# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
	config.vm.network "private_network", ip: "192.168.55.5" 
  config.vm.network :forwarded_port, guest: 8153, host: 8153
  config.vm.provider "virtualbox" do |vb|
  	vb.name = "go_ci"
    vb.memory = "4096"
  end  
end
