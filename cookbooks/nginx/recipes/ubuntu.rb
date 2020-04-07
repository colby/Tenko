#
# Cookbook Name:: nginx
# Recipe:: ubuntu
#

file '/etc/nginx/sites-enabled/default' do
  action :delete
end

template '/etc/nginx/nginx.conf' do
  source   'nginx.conf.erb'
  notifies :reload, 'service[nginx]', :delayed
end
