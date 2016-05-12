# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"

  config.vm.define "blue" do |sut|
    config.vm.network "public_network"
    config.vm.network :forwarded_port, guest: 80, host: 8000
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/site.yml"
    ansible.sudo = true

    ansible.verbose = "vvv"

    ansible.groups = {
      "webapp" => ["blue"]
    }
  end  


end
