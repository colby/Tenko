#
# Cookbook Name:: nginx
# Recipe:: default
#

package node['nginx']['packages']

service 'nginx' do
  action [:enable, :start]
end
