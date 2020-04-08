#
# Cookbook Name:: nginx
# Recipe:: default
#

package node['nginx']['packages']

case node['platform']
when 'ubuntu'
  include_recipe 'nginx::ubuntu'
end

template '/etc/nginx/nginx.conf' do
  source   'nginx.conf.erb'
  notifies :reload, 'service[nginx]', :delayed
end

template '/etc/nginx/conf.d/security' do
  source 'security.erb'
  notifies :reload, 'service[nginx]', :delayed
end

service 'nginx' do
  action [:enable, :start]
end
