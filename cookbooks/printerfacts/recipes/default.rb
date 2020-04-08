#
# Cookbook Name:: printerfacts
# Recipe:: default
#

git '/opt/printerfacts' do
  repository 'https://github.com/colby/printerfacts.git'
  revision 'master'
  depth 1
  user 'nobody'
  group 'nobody'
end

template '/etc/nginx/sites-enabled/printers' do
  source   'printers.conf.erb'
  notifies :reload, 'service[nginx]', :delayed
end

template '/etc/systemd/system/printerfacts.service' do
  source   'printerfacts.service.erb'
  notifies :run, 'execute[systemctl daemon-reload]', :immediately
end

# execute 'systemctl daemon-reload' do
#   command 'systemctl daemon-reload'
#   action :nothing
# end

service 'printerfacts' do
  action [:enable, :start]
end
