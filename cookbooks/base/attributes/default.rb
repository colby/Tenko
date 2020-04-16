default['hostname'] = 'tenko'

default['_recipes'] = %w(
  hostname
  packages
  timezone
  users
  weechat
)

default['_packages'] = %w(
  htop
  nmap
  tmux
)

default['timezone'] = 'America/Los_Angeles'
