#!/usr/bin/env ruby

BASE_PATH = "/var/www/flask"

Vagrant.configure("2") do |config|

  config.vm.synced_folder ".", BASE_PATH,
    owner: 'vagrant',
    group: 'www-data',
    mount_options: ['dmode=775', 'fmode=775']

  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "2048"]

    override.vm.box = "flask"
    override.vm.box_url = "http://files.vagrantup.com/precise64.box"
    override.vm.network "private_network", ip: "192.168.50.4"
    override.vm.provision :shell, path: "bootstrap.sh", args: "virtualbox #{BASE_PATH}"
  end
end

load "Vagrantfile.additional_providers" if File.exist? "Vagrantfile.additional_providers"
