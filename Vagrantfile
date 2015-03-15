# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 80, host: 80

  config.vm.provider "virtualbox" do |v|
	# Give VM access to all cpu cores on the host
    cpus = case RbConfig::CONFIG['host_os']
      when /darwin/ then `sysctl -n hw.ncpu`.to_i
      when /linux/ then `nproc`.to_i
      else 2
    end
	# Customize memory in MB
    v.customize ['modifyvm', :id, '--memory', 1024]
    v.customize ['modifyvm', :id, '--cpus', cpus]

    # Fix for slow external network connections
    v.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    v.customize ['modifyvm', :id, '--natdnsproxy1', 'on']  
    v.name = "sajdnota"

  end

  config.vm.network "private_network", ip: "192.168.56.1"

  config.vm.hostname = "pc5123"

  config.vm.provision "shell", path: "easyengine.sh"
  
end
