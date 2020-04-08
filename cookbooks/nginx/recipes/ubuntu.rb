#
# Cookbook Name:: nginx
# Recipe:: ubuntu
#

template '/etc/nginx/sites-enabled/main' do
  source   'main.erb'
  notifies :reload, 'service[nginx]', :delayed
end

file '/etc/nginx/sites-enabled/default' do
  manage_symlink_source false
  action :delete
  notifies :reload, 'service[nginx]', :delayed
end
