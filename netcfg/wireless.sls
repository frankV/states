include:
  - netcfg

net-auto-wireless:
  service.running:
    - enable: True
    - require:
      - pkg: netcfg
      - pkg: wpa_actiond

netcfg-wireless-deps:
  pkg.installed:
    - names:
      - wireless_tools
      - wpa_supplicant
      - wpa_actiond
