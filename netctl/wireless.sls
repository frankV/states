include:
  - netctl

"netctl-auto@wlan0":
  service.running:
    - enable: True
    - require:
      - pkg: netctl
      - pkg: wpa_actiond

netctl-wireless-deps:
  pkg.installed:
    - names:
      - wireless_tools
      - wpa_supplicant
      - wpa_actiond
