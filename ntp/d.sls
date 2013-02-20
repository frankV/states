include:
  - ntp

ntpd:
  service.running:
    - enable: True
    - require:
      - pkg: ntp
