#
# Cookbook Name:: tailscale
# Recipe:: default
#

package node['tailscale']['packages']

apt_repository 'tailscale' do
  uri 'https://pkgs.tailscale.com/stable/ubuntu'
  components ['main']
  key 'https://pkgs.tailscale.com/stable/ubuntu/bionic.gpg'
end
