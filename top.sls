base:
  '*':
    - core
    - users
  'sodium.uggedal.com':
    - dhcp
    - ntp.d
    - pacman.uk
    - xen
    - salt.master
    - zsh
    - development*
    - packaging
    - nginx.sites
    - uwsgi.services
    - redis
    - postgresql.databases
    - analysis
  'magnesium.uggedal.com':
    - dhcp
    - ntp.d
    - pacman.uk
    - xen
    - tarsnap.backup
    - nginx.sites
    - uwsgi.services
    - redis
    - postgresql.databases
    - analysis
  'aluminium.uggedal.com':
    - ntp.date
    - pacman.no
    - zsh
    - acpid
    - xorg.nvidia
    - development
    - netctl.profiles
    - netctl.wireless
    - tsocks
  'silicon.uggedal.com':
    - ntp.date
    - pacman.no
    - zsh
    - acpid
    - xorg.intel
    - development
    - development.js
    - netctl.profiles
    - netctl.wireless
    - netctl.wired
    - tsocks
    - vbox
