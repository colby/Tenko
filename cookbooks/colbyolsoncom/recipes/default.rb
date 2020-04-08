#
# Cookbook Name:: colbyolsoncom
# Recipe:: default
#

directory '/opt/colbyolsoncom' do
  user 'nobody'
end

git '/opt/colbyolsoncom' do
  repository 'https://github.com/colby/colbyolson.com.git'
  revision 'master'
  depth 1
  user 'nobody'
end

template '/etc/nginx/conf.d/colbyolsoncom' do
  source   'colbyolsoncom.erb'
  notifies :reload, 'service[nginx]', :delayed
end
