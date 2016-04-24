VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
  config.vm.hostname = "trusty"
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true
  # config.vm.box = "phusion/ubuntu-14.04-amd64"
  config.vm.box = "ubuntu/wily64"
  config.ssh.insert_key=false
  config.vm.network :private_network, ip: "192.168.9.99", adapter: 2, name: "VirtualBox Host-Only Ethernet Adapter #3"
  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--vram", "256"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end
  config.vm.provision :chef_solo do |chef|
    node_name = config.vm.box
    chef.data_bags_path = ["../data_bags"]
    chef.json = {
        timezone: {
            value: "America/Chicago",
        },
        :anaconda => {
            :accept_license => 'yes',
        },
    }

    chef.run_list = [
        "recipe[ubuntu_gdm::default]",
        "recipe[wily::removeLXC]",
        "recipe[rztimezone]",
        "recipe[linux_tools::screen]",
        "recipe[linux_tools::tree]",
        "recipe[linux_tools::pv]",
        "recipe[linux_tools::makepasswd]",
        "recipe[linux_tools::apt_show_versions]",
        "recipe[linux_tools::ca_certificates]",
        "recipe[git]",
        "recipe[java]",
        "recipe[idea::default]",
        "recipe[anaconda::default]",
        "recipe[anaconda::shell_conveniences]",
        "recipe[anaconda::notebook_server]",
        "recipe[mypython::sudoconda]",
        "recipe[mypython::virtualenv]",
        "recipe[mypython::pycharm]",
        "recipe[ubuntu_unity]",
        "recipe[vbox_guest_additions]",
        "recipe[reboot]",
        "recipe[myreboot]",
    ]
  end
end
