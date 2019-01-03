# vi: set ft=ruby :
Vagrant.configure(2) do |config|  
  config.vm.define "unc-comp-vm" do |box|
    box.vm.box = "KrisJordan/unc-comp-vm"
    box.vm.provider "virtualbox" do |v|
     v.name = "UNC CS VM"
     v.gui = false
     v.memory = 1024
     v.cpus = 2
    end
  end
end
