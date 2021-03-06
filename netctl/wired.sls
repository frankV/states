include:
  - netctl
  - netctl.profiles

ifplugd:
  pkg.installed

netctl-ifplugd@eth0:
  service.running:
    - enable: True
    - require:
      - pkg: netctl
      - pkg: ifplugd
