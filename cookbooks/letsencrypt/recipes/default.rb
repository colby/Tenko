#
# Cookbook Name:: letsencrypt
# Recipe:: default
#

package node['letsencrypt']['packages']

directory '/etc/systemd/system/certbot.service.d/'

file '/etc/systemd/system/certbot.service.d/override.conf' do
  content 'ExecStart=/usr/bin/certbot -q renew --post-hook "service nginx restart"'
  notifies :run, 'execute[systemctl daemon-reload]', :immediately
end

execute 'systemctl daemon-reload' do
  command 'systemctl daemon-reload'
  action :nothing
end
