#
# Cookbook Name:: sendmail
# Recipe:: default
#

package node['sendmail']['packages']

template '/etc/msmtprc' do
  source 'msmtprc.erb'
end
