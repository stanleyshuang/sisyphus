# -*- mode: ruby -*-
# vi: set ft=ruby :
$set_environment_variables = <<SCRIPT
echo "export niout=\\\"#{ENV['niout']}\\\"" >> ~/.profile
echo "export niin=\\\"#{ENV['niin']}\\\"" >> ~/.profile
echo "export objip=\\\"#{ENV['objip']}\\\"" >> ~/.profile
echo "export otherip=\\\"#{ENV['otherip']}\\\"" >> ~/.profile
SCRIPT

Vagrant.configure("2") do |config|

    config.vm.define "sisyphus" do |sisyphus|
      sisyphus.vm.box = "ubuntu/xenial64"
      sisyphus.vm.network "public_network", bridge: ENV['niout'], ip: ENV['objip']
      sisyphus.vm.network "public_network", bridge: ENV['niin'], ip: ENV['otherip']
      sisyphus.vm.provision "shell", inline: $set_environment_variables, run: "always"
      sisyphus.vm.provision "shell", path: "configs/provision.sh"
      sisyphus.vm.hostname = "sisyphus"

      sisyphus.vm.provider "virtualbox" do |vb|
        vb.name = "sisyphus"
        vb.memory = "2048"
        vb.cpus = 2
        vb.customize ["modifyvm", :id, "--uartmode1", "disconnected"]
        vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
        vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
      end
    end
  
end
