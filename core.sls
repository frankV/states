include:
  - salt
  - systemd
  - pam
  - bash
  - pacman
  - logrotate
  - iptables
  - ssh
  - cron
  - cron.jobs
  - tmpfiles
  - extra_packages

corepkgs:
  pkg.installed:
    - names:
      - inetutils
      - htop
      - lsof
      - psm
      - bc

unneededpkgs:
  pkg.purged:
    - names:
      - jfsutils
      - nano
      - pcmciautils
      - ppp
      - reiserfsprogs
      - xfsprogs
      - cryptsetup
      - lvm2
      - heirloom-mailx
      - licenses
      - mdadm
      - net-tools
      - mtr
      - sudo
      - wget
      - whois
      - libfetch
      - libpcap
