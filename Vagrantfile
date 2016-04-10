VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "trusty"
  config.omnibus.chef_version = :latest
  config.vm.box = "phusion/ubuntu-14.04-amd64"
  # config.vm.box = "ubuntu/trusty64"
  # config.vm.box = "chef/ubuntu-14.04"
  config.ssh.insert_key=false
  config.vm.network :private_network, ip: "172.28.128.99", :adapter => 2
  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--vram", "256"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
 end
  config.berkshelf.enabled = true
  config.vm.provision :chef_solo do |chef|
    node_name = config.vm.box
    chef.data_bags_path = ["../data_bags"]
    chef.json = {
        timezone: {
            value: "America/Chicago",
        },
    }

    chef.run_list = [
        "recipe[rztimezone]",
        "recipe[linux_tools::screen]",
        "recipe[linux_tools::tree]",
        "recipe[git]",
        "recipe[ubuntu_unity]",
        "recipe[vbox_guest_additions]",
        "recipe[reboot]",
        "recipe[myreboot]",
    ]
  end
end
