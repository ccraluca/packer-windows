# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "windows"

  config.vm.provision "file", source: ENV['SOURCE'], destination: "C:\\USERS\\VAGRANT\\DOCUMENTS\\"

  config.vm.disk :dvd, name: "installer", file: "/var/lib/jenkins/workspace/users/rchis/R2021a_Update_5_Windows.iso"

  config.vm.provision "shell", path: ENV['SCRIPT']
end
