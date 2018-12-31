# vi: set ft=ruby :
Vagrant.configure(2) do |config|  
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", path: "./provision.sh", privileged: false
  config.vm.provider "virtualbox" do |v|
    v.gui = false
    v.memory = 1024
  end
end