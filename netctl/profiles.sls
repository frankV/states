include:
  - netctl

{% for profile in pillar.get('netctl_profiles', []) %}
/etc/netctl/{{ profile.name }}:
  file.managed:
    - source: salt://netctl/profile.jinja
    - template: jinja
    - defaults:
        index: {{ loop.index0 }}
{% endfor %}
