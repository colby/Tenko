#
# Cookbook Name:: nginx
# Recipe:: ubuntu
#

template '/etc/nginx/nginx.conf' do
  source   'nginx.conf.erb'
  notifies :reload, 'service[nginx]', :delayed
end
