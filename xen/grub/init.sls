grub:
  pkg.installed:
    - require:
      - cmd: mkinitcpio

/boot/grub/menu.lst:
  file.managed:
    - source: salt://xen/grub/menu.lst
    - require:
      - pkg: grub
