user 'colby' do
  comment     'me!'
  uid         666
  gid         'adm'
  home        '/home/colby'
  shell       '/bin/bash'
  manage_home true
end

file '/home/colby/.ssh/authorized_keys' do
  action :create
  content 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJPXyRqEc8u4+UGDhCMKoEYbH0cUEI/04ipBmfJlNDhXN56wgWAAZQQ3qeNUSOGPwPUfTSX6JZNM2qr0KVVLwxNLDcRq0AXQWSZKgdJpSsX161lwO0Ypmm21lyOuU5uHAUP4ju1+TzvQhFask9C8yeVfGVsMHrbQ4IBaPievJ5OjX/Wv9r/eMmGLFGCYZaU6rtGo9hQu/ZJVYPwmFXF1RS6Sg+GmHt6lYcB2mJjVQN92HIeJwD+Mtudpupq/5sWr1X9tb7w3jelUwAyIb7JaWV/mmvhnUyi5hxiOkQGoDFXqEoHXInlOmOay56xOzfpskRDAuTYDt+CkpxKqNhr17x colbyo@copio.us'
  mode '0600'
  owner 'colby'
  group 'colby'
end
