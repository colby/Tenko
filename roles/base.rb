name 'base'

run_list()

default_attributes(
  iptables: {
    rules: [
      '-A INPUT -i eth0 -p tcp -m tcp --dport 22 -j ACCEPT',
    ]
  }
)
