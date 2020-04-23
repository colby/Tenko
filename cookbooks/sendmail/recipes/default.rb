#
# Cookbook Name:: sendmail
# Recipe:: default
#

package node['sendmail']['packages']

template '/etc/msmtprc' do
  source 'msmtprc.erb'
end

template '/home/colby/.netrc' do
  source 'netrc.erb'
  action :create_if_missing # NOTE: local edits will be preserved
end
