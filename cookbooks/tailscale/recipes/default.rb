#
# Cookbook Name:: tailscale
# Recipe:: default
#

apt_repository 'tailscale' do
  uri        'https://pkgs.tailscale.com/stable/ubuntu'
  components ['main']
  keyserver 'https://pkgs.tailscale.com/stable/ubuntu/bionic.gpg'
end
