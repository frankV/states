base:
  '*':
    - common
  'sodium.uggedal.com':
    - common.xen
    - common.web
    - salt.master
    - development*
    - packaging
  'magnesium.uggedal.com':
    - common.xen
    - common.web
    - tarsnap.backup
  'aluminium.uggedal.com':
    - common.laptop
    - xorg.nvidia
  'silicon.uggedal.com':
    - common.laptop
    - netctl.wired
    - xorg.intel
    - vbox
