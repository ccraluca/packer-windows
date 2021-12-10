Vagrant.configure("2") do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "win10"

#  config.vm.synced_folder ".", "A:\\"
  
  config.vm.provider :virtualbox do |vm, override|
    vm.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "1", "--device", "0", "--type", "dvddrive", "--medium", "/var/lib/jenkins/workspace/users/rchis/R2021a_Update_5_Windows.iso"]
  end

  config.vm.provision "shell", path: ENV['SCRIPT_PATH']
end

