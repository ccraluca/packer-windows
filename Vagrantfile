# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "windows"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end

  config.vm.communicator = "winrm"

  #config.vm.disk :disk, size: "300GB", primary: true

  config.vm.base_mac = "080027950413"

  config.vm.provision "file", source: ENV['SOURCE'], destination: "C:\\USERS\\VAGRANT\\DOCUMENTS\\"

  config.vm.disk :dvd, name: "installer", file: "/var/lib/jenkins/workspace/users/rchis/R2021a_Update_7_Windows.iso"

  config.vm.provision "shell", path: ENV['SCRIPT']
end
