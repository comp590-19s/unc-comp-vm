# vi: set ft=ruby :
Vagrant.configure(2) do |config|  
  config.vm.define "comp590" do |box|
    box.vm.box = "KrisJordan/comp590-19s"
    box.vm.provider "virtualbox" do |v|
     v.name = "comp590"
     v.gui = false
     v.memory = 1024
     v.cpus = 2
    end
  end
end
