vboxpkgs:
  pkg.installed:
    - names:
      - virtualbox
      - virtualbox-host-modules

/etc/modules-load.d/virtualbox.conf:
  file.managed:
    - source: salt://vbox/modules-load.conf
