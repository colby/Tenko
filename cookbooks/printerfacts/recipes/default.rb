#
# Cookbook Name:: printerfacts
# Recipe:: default
#

directory '/opt/printerfacts' do
  user 'nobody'
end

git '/opt/printerfacts' do
  repository 'https://github.com/colby/printerfacts.git'
  revision 'master'
  depth 1
  user 'nobody'
end

template '/etc/nginx/conf.d/printerfacts' do
  source   'printerfacts.erb'
  notifies :reload, 'service[nginx]', :delayed
end

template '/etc/systemd/system/printerfacts.service' do
  source   'printerfacts.service.erb'
  notifies :run, 'execute[systemctl daemon-reload]', :immediately
end

service 'printerfacts' do
  action [:enable, :start]
end
