file '/etc/hostname' do
  action  :create
  content node['hostname']
  mode    0440
end

execute 'set hostname' do
  command "hostname #{node['hostname']}"
  not_if "hostname = #{node['hostname']}"
end
