[Salt][s] states for [uggedal.com][u]. Developed for Arch Linux, but most
states can easily be generalized.

Expected Pillar data
--------------------

Private data is stored in [pillar][p]. Some of these states expect pillar
data in a specific structure.

### cron

    # List of cron jobs:
    cron_jobs:
      - cmd: /usr/local/venv/viva/bin/ctl sendnews
        user: http
        minute: '*/5'

### iptables

    # List of TCP ports to open:
    accept_tcp_ports:
      - 80

### netctl

    # netctl wired/wireless profiles:
    netctl_profiles:
      - name: wired
        connection: ethernet
        interface: eth0
      - name: home
        essid: myhomenet
        key_mgmt: WPA-PSK
        psk: thepresharedkey
      - name: work
        security: wpa-configsection
        essid: worknet
        key_mgmt: WPA-EAP
        eap: PEAP
        identity: 'My Name'
        password: myworkpassword
      - name: conference
        essid: confnet
      - name: openwithauth
        essid: opennet
        post_up: "curl -ksd 'u=me&p=qwer' https://open.tld >/dev/null"

### nginx

    # List of nginx sites (static and/or proxied over uwsgi or http protocol):
    nginx_sites:
      - fqdn: mysite.com
        aliases:
          - www.mysite.com
        default: true
        root: /srv/http/mysite
        uwsgi: true
        upstreams: ["unix:/var/run/uwsgi/mysite.sock"]
        static_prefix: /static

### pacman

    # Extra pacman repos:
    pacman_extra_repos:
      - name: myprivaterepo
        url: http://my.private.repo.com

### postgresql

    # List of postgresql databases:
    postgresql_databases:
      - bravann
      - viva

### ssh

    # List of users allowed to log in with ssh:
    allowed_users:
      - myunprivilegeduser

### tarsnap

    # List of cmds to run and take backup of with tarsnap:
    tarsnap_backup_cmds:
      - /usr/local/venv/mysite/bin/manage backup > all.json

    # List of paths to take backup of with tarsnap:
    tarsnap_backup_paths:
      - /etc
      - /srv/http/mysite/static/uploads

### users

    # List of unprivileged users:
    users:
      myuser:
        group: users
        uid: 3000
        gid: 100
        fullname: My User
        ssh_auth:
          key: verylongkeyhere
          comment: my@user.com

    # List of groups all unprivileged users should be member of:
    unprivileged_groups:
      - adm
    # Whether to allow passwords for all unprivileged users:
    unprivileged_keep_password: true

    # Shell for all unprivileged users:
    unprivileged_shell: /bin/zsh

### uwsgi

    # List of uwsgi instances:
    uwsgi_services:
      - name: mysite
        module: "mysite:app"
        processes: 4
      - name: myothersite
        module: myothersite
        django: true
        idle: true
        processes: 1


[s]: http://saltstack.org
[u]: http://uggedal.com
[p]: http://readthedocs.org/docs/salt/en/latest/topics/pillar/index.html
