#
# Cookbook Name:: iptables
# Recipe:: default
#

package node['iptables']['packages']

template '/etc/iptables/rules.v4' do
  cookbook 'iptables'
  source   'iptables.erb'
  notifies :run, 'execute[iptables reload]', :immediately
end

execute 'iptables reload' do
  action  :nothing
  command 'service netfilter-persistent reload'
end
