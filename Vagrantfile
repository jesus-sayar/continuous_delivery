# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"

  config.vm.define "consul_vm" do |sut|
    sut.vm.hostname = "consulvm"    
    sut.vm.network "public_network", ip: "192.168.0.129"
  end

  config.vm.define "router_vm" do |sut|
    sut.vm.hostname = "router_vm"    
    sut.vm.network "public_network", ip: "192.168.0.130"
  end      

  config.vm.define "app1_vm" do |sut|
    sut.vm.hostname = "app1vm"
    sut.vm.network "public_network", ip: "192.168.0.131"
  end

  config.vm.define "app2_vm" do |sut|
    sut.vm.hostname = "app2vm"    
    sut.vm.network "public_network", ip: "192.168.0.132"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/site.yml"
    ansible.sudo = true

    ansible.verbose = "vvv"

    ansible.groups = {
      "consul" => ["consul_vm"],
      "webapp" => ["app1_vm", "app2_vm"]
    }
  end  


end
