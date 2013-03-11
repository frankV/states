tsocks:
  pkg:
    - installed
  file.managed:
    - name: /etc/tsocks.conf
    - source: salt://tsocks/tsocks.conf
    - require:
      - pkg: tsocks
