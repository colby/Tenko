template '/etc/ssh/sshd_config' do
  source   'sshd_config.erb'
  notifies :run, 'service[sshd]', :immediately
end

service 'sshd' do
  action :nothing
end
