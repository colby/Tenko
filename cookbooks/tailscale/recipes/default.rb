#
# Cookbook Name:: tailscale
# Recipe:: default
#

apt_repository 'tailscale' do
  uri 'https://pkgs.tailscale.com/stable/ubuntu'
  components ['main']
  key 'https://pkgs.tailscale.com/stable/ubuntu/bionic.gpg'
end

package node['tailscale']['packages']
