execute "timedatectl set-timezone #{node['timezone']}" do
  action :run
end
