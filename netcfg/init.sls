netcfg:
  pkg:
    - installed
  file.managed:
    - name: /etc/conf.d/netcfg
    - source: salt://netcfg/netcfg.conf.jinja
    - template: jinja
