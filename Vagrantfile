# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.

  # config.vm.box = "centos/7"
  # config.vm.box_version = "2004.01"
  config.vm.box = "bento/ubuntu-20.04"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = true

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 8080, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10", name: "vboxnet0"#, :adapter => 2
  config.vm.hostname = "node.example.com"
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:

  # vbguest options https://github.com/dotless-de/vagrant-vbguest
  # turn off vbox guest additions install
  config.vbguest.no_install = true # if true, turn off synced_folder as it will fail otherwise

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "~/Downloads", "/vagrant_data", type: "virtualbox", SharedFoldersEnableSymlinksCreate: false

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "8192"
#     fix for message with NIC vulnerability but still doesn't address the issue
#     as nic type e1000 is invalid, E1000 also doesn't work
#     vb.default_nic_type = "e1000"
  end

  # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #

  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

  config.vm.provision "ansible" do |ansible|
     ansible.compatibility_mode = "2.0"
     ansible.playbook = "playbooks/kerberos/playbook.yml"
    # enable for debugging
    # ansible.verbose = "vvv"
  end
end
