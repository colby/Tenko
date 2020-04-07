#
# Cookbook Name:: nginx
# Recipe:: ubuntu
#

file '/etc/nginx/sites-enabled/default' do
  manage_symlink_source false
  action :delete
end

template '/etc/nginx/nginx.conf' do
  source   'nginx.conf.erb'
  notifies :reload, 'service[nginx]', :delayed
end
