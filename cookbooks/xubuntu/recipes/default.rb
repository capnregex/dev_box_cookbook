#
# Cookbook:: xubuntu
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

##recipe[ubuntu]

package "xubuntu-core" do
  timeout 30 * 60 # big package, give it a half hour
end
package %w(
  git wget curl vim-gnome terminator firefox chromium-browser
  chromium-chromedriver build-essential dkms xvfb ruby-all-dev python nodejs
  npm apt-transport-https ca-certificates curl mysql-server postgresql
  postgresql-contrib ruby-pg libpq5 software-properties-common
)

# linux-headers-$(uname -r) 
#    service lightdm start
#  SHELL

directory "/etc/lightdm/lightdm.conf.d"

file "/etc/lightdm/lightdm.conf.d/50-myconfig.conf" do
  content <<~AUTOLOGIN
    [SeatDefaults]
    autologin-user=vagrant
  AUTOLOGIN
end

