files = [
  #'/etc/update-motd.d/00-header',
  '/etc/update-motd.d/10-help-text',
  #'/etc/update-motd.d/50-landscape-sysinfo -> /usr/share/landscape/landscape-sysinfo.wrapper',
  '/etc/update-motd.d/50-motd-news',
  '/etc/update-motd.d/80-esm',
  '/etc/update-motd.d/80-livepatch',
  #'/etc/update-motd.d/90-updates-available',
  #'/etc/update-motd.d/91-release-upgrade',
  #'/etc/update-motd.d/92-unattended-upgrades',
  '/etc/update-motd.d/95-hwe-eol',
  '/etc/update-motd.d/97-overlayroot',
  #'/etc/update-motd.d/98-fsck-at-reboot',
  #'/etc/update-motd.d/98-reboot-required',
]

files.each do |f|
  file f do
    mode 0644
  end
end
