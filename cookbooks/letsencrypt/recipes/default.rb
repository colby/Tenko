#
# Cookbook Name:: letsencrypt
# Recipe:: default
#

package node['letsencrypt']['packages']

# template '/etc/nginx/nginx.conf' do
#   source   'nginx.conf.erb'
#   notifies :reload, 'service[nginx]', :delayed
# end
