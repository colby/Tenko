file '/etc/hostname' do
  action  :create
  content 'tenko'
  mode    0440
end
