file '/etc/hostname' do
  content "#{node['hostname']}\n"
  notifies :run, 'execute[set hostname]', :immediately
end

execute 'set hostname' do
  command "hostname #{node['hostname']}"
  action :nothing
end
