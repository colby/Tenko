#
# Cookbook Name:: fail2ban
# Recipe:: default
#

package node['fail2ban']['packages']

# template '' do
#   source   ''
#   notifies :reload, 'service[]', :immediately
# end

service 'fail2ban' do
  action [:enable, :start]
end
