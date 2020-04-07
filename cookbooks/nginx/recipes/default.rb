#
# Cookbook Name:: nginx
# Recipe:: default
#

package node['nginx']['packages']

template '/etc/nginx/text.conf' do
  source   'nginx.conf.erb'
  notifies :reload, 'service[nginx]', :delayed
end

service 'nginx' do
  action [:enable, :start]
end
