# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  
  config.vm.box = "bento/centos-7"

  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = "./cookbooks/demo/Berksfile"
  
  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "demo"
    chef.json = {
      "postgresql": {
        "password": {
          "postgres": "iloverandompasswordsbutthiswilldo"
        }
      }
    }
  end

  config.vm.network "private_network", ip: "192.168.34.34"

  config.vm.synced_folder '/Users/allan/WebApps/sf-demo', '/app', mount_options: ["uid=48", "gid=48"]

  config.vm.provider "virtualbox" do |vb|
    vb.name = "symfony-demo"
    vb.memory = "1024"
  end

end
