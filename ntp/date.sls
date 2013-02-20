include:
  - ntp

ntpdate:
  service.running:
    - enable: True
    - require:
      - pkg: ntp
