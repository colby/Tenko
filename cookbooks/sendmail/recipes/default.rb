#
# Cookbook Name:: sendmail
# Recipe:: default
#

package node['sendmail']['packages']

# template '' do
#   source ''
#   notifies :restart, 'service[]', :delayed
# end
#
# service '' do
#   action [:enable, :start]
# end
