# default[:machine][:user] = 'vagrant'
# default[:machine][:group] = 'vagrant'
# default[:machine][:name] = 'Robert Zurga'
# default[:machine][:email] = 'vagrant@zurga.com'

default[:boostrap][:auto_reboot] = 1

normal['java']['install_flavor'] = "oracle"
normal['java']['jdk_version'] = "8"
normal['java']['oracle'] = {"accept_oracle_download_terms" => true}

normal['idea']['setup_dir'] = "/opt"
normal['idea']['ide_dir'] = "/idea"
normal['idea']['edition'] = "C"
normal['idea']['version'] = "2016.1.1"