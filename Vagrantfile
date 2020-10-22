# -- mode: ruby --
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
config.vm.define :servidor3 do |servidor3|
	servidor3.vm.box = "parcial"
	servidor3.vm.network :private_network, ip: "192.168.50.2"
	servidor3.vm.hostname = "servidor3"
	servidor3.vm.provision "shell", path: "servidor3.sh"
end
config.vm.define :firewall do |firewall|
	firewall.vm.box = "parcial"
	firewall.vm.network :public_network, use_dhcp_assigned_default_route: true
	firewall.vm.network :private_network, ip: "192.168.50.4"
	firewall.vm.hostname = "firewall"
	firewall.vm.provision "shell", path: "firewall.sh"
end
config.vm.define :servidor2 do |servidor2|
	servidor2.vm.box = "parcial"
	servidor2.vm.network :private_network, ip: "192.168.50.3"
	servidor2.vm.hostname = "servidor2"
	servidor2.vm.provision "shell", path: "servidor2.sh"
end
end
