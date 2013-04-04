vboxpkgs:
  pkg.installed:
    - names:
      - virtualbox
      - virtualbox-host-modules
      - virtualbox-guest-iso

/etc/modules-load.d/virtualbox.conf:
  file.managed:
    - source: salt://vbox/modules-load.conf
