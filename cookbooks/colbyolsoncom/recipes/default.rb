#
# Cookbook Name:: colbyolsoncom
# Recipe:: default
#

package node['colbyolsoncom']['packages']

directory '/opt/colbyolsoncom' do
  user 'colby'
end

directory '/var/www/colbyolsoncom' do
  user 'colby'
  group 'nobody'
end

file '/etc/profile.d/colbyolsoncom.sh' do
  content 'export BLOG_PATH=/var/www/colbyolsoncom'
  mode 0755
end

git '/opt/colbyolsoncom' do
  repository 'https://github.com/colby/colbyolson.com.git'
  revision 'master'
  depth 1
  user 'colby'
end

template '/etc/nginx/conf.d/colbyolsoncom' do
  source   'colbyolsoncom.erb'
  notifies :reload, 'service[nginx]', :delayed
end
