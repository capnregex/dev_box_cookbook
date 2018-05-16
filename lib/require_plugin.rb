
unless Vagrant.has_plugin?("vagrant-proxyconf")
  puts "installing plugin vagrant-proxyconf"
  %x(vagrant plugin install vagrant-proxyconf)
  puts "Installed!"
  puts "retrying: vagrant #{ARGV}"
  exec 'vagrant', *ARGV
end

