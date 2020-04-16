default['hostname'] = 'tenko'

default['recipes'] = %w(
  hostname
  packages
  timezone
  users
  weechat
)

default['packages'] = %w(
  htop
  nmap
  tmux
)

default['timezone'] = 'America/Los_Angeles'
