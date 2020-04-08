group 'colby'

user 'colby' do
  comment     'me!'
  uid         666
  gid         'colby'
  home        '/home/colby'
  shell       '/bin/bash'
  manage_home true
end

user 'ubuntu' do
  action :remove
end

groups = %w(adm sudo admin)

groups.each do |g|
  group g do
    action           :modify
    members          'colby'
    append           true
    excluded_members 'ubuntu'
  end
end

directory '/home/colby/.ssh' do
  mode  0755
  owner 'colby'
  group 'colby'
end

file '/home/colby/.ssh/authorized_keys' do
  action  :create
  content "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDamVNcp5wCLeijOv0AUqyY6cAt5JbBBg1yPyPbYJufU8gEEE+cKtrsVrw6oplyA1RP9aK4S8ddh/YuAc4J3E21866jMqUrCUm6iMnZCsXX3kf82ns5jEqN6mcWLN7LOMRsRotJVYw7XzJ72+Vt0aBtXKFz69m5CTr72M1J/ppT0S7kab3VfQRsV9woMpKRkjG1DX9+lUqAb5UZWoqws/CgMIxn68SJOp4RyGYIyqGbnEyZIqfxw8piVF5lfk8yofFfTLWPgLM8I/mpGlWY16xu/re8ZydWq3HyD7wDKys+UwpFquZdNFqXIz0XPfYE3IO5iUy6vjVY7Efv+9KpITBkNlrPQaW7kam3FZba1OZFAXxXhF4p0q3xcbI0pD8GjVtj4/oMvp/TEwQ2GVpluwVowOYGUX9xwKgLGBmQu9SAVOZ+ratsN3hzpQr1xv5AeKk15ooIfU+M26HZf2mJWS1+7cdTi+QaJaBH3F2Xz1cOtFBse5jg5vWsEAEARof9xXXCcdCMsle+aQwVbgh04a5afR7wFacY0v9UdFewKT+e/jL/tNL5AKzmDJlIDoyc/pKpNiK5iLkvX0x/fQFvCLmmzX6yoTpWfeI32XiAfUBiC1mP6SJfbEl2R7uWEzGUt/45KrzTHNuPN0ntAJxfzeK2SQtxF3KbIQEAT4cwsc9Xyw==\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJPXyRqEc8u4+UGDhCMKoEYbH0cUEI/04ipBmfJlNDhXN56wgWAAZQQ3qeNUSOGPwPUfTSX6JZNM2qr0KVVLwxNLDcRq0AXQWSZKgdJpSsX161lwO0Ypmm21lyOuU5uHAUP4ju1+TzvQhFask9C8yeVfGVsMHrbQ4IBaPievJ5OjX/Wv9r/eMmGLFGCYZaU6rtGo9hQu/ZJVYPwmFXF1RS6Sg+GmHt6lYcB2mJjVQN92HIeJwD+Mtudpupq/5sWr1X9tb7w3jelUwAyIb7JaWV/mmvhnUyi5hxiOkQGoDFXqEoHXInlOmOay56xOzfpskRDAuTYDt+CkpxKqNhr17x"
  mode    0600
  owner   'colby'
  group   'colby'
end

file '/etc/sudoers.d/90-colby-rules' do
  action  :create
  content 'colby ALL=(ALL) NOPASSWD:ALL'
  mode    0440
end

file '/home/colby/.hushlogin' do
  mode 0400
end
