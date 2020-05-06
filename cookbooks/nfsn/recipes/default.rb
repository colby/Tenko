#
# Cookbook Name:: nfsn
# Recipe:: default
#

template '/etc/systemd/system/nfsn-dns.service' do
  source 'nfsn-dns.service.erb'
  notifies :run, 'execute[systemctl daemon-reload]', :immediately
end

template '/etc/systemd/system/nfsn-dns.timer' do
  source 'nfsn-dns.timer.erb'
  notifies :run, 'execute[systemctl daemon-reload]', :immediately
end

service 'nfsn-dns.timer' do
  action [:enable, :start]
end
