# -*- mode: ruby -*-
# vi: set ft=ruby :
$set_environment_variables = <<SCRIPT
echo "export niout=\\\"#{ENV['niout']}\\\"" >> ~/.profile
echo "export niin=\\\"#{ENV['niin']}\\\"" >> ~/.profile
echo "export objip=\\\"#{ENV['objip']}\\\"" >> ~/.profile
SCRIPT

Vagrant.configure("2") do |config|

    config.vm.define "sisyphus" do |sisyphus|
      sisyphus.vm.box = "ubuntu/xenial64"
      # sisyphus.vm.network "public_network", bridge: ENV['niout'], ip: ENV['objip']
      sisyphus.vm.network "public_network", use_dhcp_assigned_default_route: true
      sisyphus.vm.provision "shell", inline: $set_environment_variables, run: "always"
      sisyphus.vm.provision "shell", path: "configs/provision.sh"
      sisyphus.vm.hostname = "sisyphus"

      sisyphus.vm.provider "virtualbox" do |vb|
        vb.name = "sisyphus"
        vb.memory = "2048"
        vb.cpus = 2
      end
    end
  
end
