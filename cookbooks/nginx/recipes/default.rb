#
# Cookbook Name:: nginx
# Recipe:: default
#

package node['nginx']['packages']

case node['platform']
when 'ubuntu'
  include_recipe 'nginx::ubuntu'
end

service 'nginx' do
  action [:enable, :start]
end
