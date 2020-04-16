execute "timedatectl set-timezone #{node['timezone']}" do
  action :run
  not_if "grep #{node['timezone']} /etc/timezone"
end
