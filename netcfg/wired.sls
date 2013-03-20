include:
  - netcfg

ifplugd:
  pkg.installed

net-auto-wired:
  service.running:
    - enable: True
    - require:
      - pkg: netcfg
      - pkg: ifplugd
