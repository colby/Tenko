template '/etc/ssh/sshd_config' do
  source   'sshd_config.erb'
  notifies :restart, 'service[sshd]', :immediately
end

service 'sshd' do
  action :nothing
end
