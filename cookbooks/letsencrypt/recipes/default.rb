#
# Cookbook Name:: letsencrypt
# Recipe:: default
#

package node['letsencrypt']['packages']

directory '/etc/systemd/system/certbot.service.d/'

template '/etc/nginx/conf.d/certbot.conf' do
  source   'nginx.erb'
  notifies :reload, 'service[nginx]', :delayed
end

file '/etc/systemd/system/certbot.service.d/override.conf' do
  content "[Service]\nExecStart=/usr/bin/certbot -q renew --post-hook 'service nginx restart'"
  notifies :run, 'execute[systemctl daemon-reload]', :immediately
end

execute 'systemctl daemon-reload' do
  command 'systemctl daemon-reload'
  action :nothing
end

# sudo certbot certonly --webroot --webroot-path /var/lib/letsencrypt/ --cert-name colbyolson.com -d www.colbyolson.com -m letsencrypt@colbyolson.com --agree-tos
