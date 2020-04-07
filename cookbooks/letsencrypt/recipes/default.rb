#
# Cookbook Name:: letsencrypt
# Recipe:: default
#

package node['letsencrypt']['packages']

directory '/etc/systemd/system/certbot.service.d/'

file '/etc/systemd/system/certbot.service.d/override.conf' do
  content 'ExecStart=/usr/bin/certbot -q renew --post-hook "service nginx restart"'
end

systemd_unit 'certbox.service' do
  triggers_reload true
end
