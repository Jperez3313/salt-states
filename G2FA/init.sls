{% from "./map.jinja" import me with context %}

google_auth:
  pkg.installed:
    - pkgs:
      - {{ me.package }}

{% if grains['os_family'] == "RedHat" %}
epel-release:
  pkg.installed:
    - pkgs:
      - epel-release 
{% endif %}

{% if grains['os_family'] == "Debian" %}
/etc/pam.d/sshd:
  file:
    - managed
    - user: 0
    - group: 0
    - mode: 644
    - source: salt://{{ slspath }}/etc/pam.d/sshd_deb
{% endif %}

{% if grains['os_family'] == "Debian" %}
/etc/ssh/sshd_config:
  file:
    - managed
    - user: 0
    - group: 0
    - mode: 644
    - source: salt://{{ slspath }}/etc/ssh/googleauthDEB.conf
{% endif %}

{% if grains['os_family'] == "RedHat" %}
/etc/ssh/sshd_config:
  file: 
    - managed
    - user: 0
    - group: 0
    - mode: 644
    - source: salt://{{ slspath }}/etc/ssh/googleauthRH.conf
{% endif %}

{% if grains['os_family'] == "RedHat" %}
/etc/pam.d/sshd:
  file:
    - managed
    - user: 0
    - group: 0
    - mode: 644
    - source: salt://{{ slspath }}/etc/pam.d/sshd_rh
{% endif %}

restart_ssh_service_:
  service.running:
    - name: sshd.service
    - enable: True
    - reload: True

