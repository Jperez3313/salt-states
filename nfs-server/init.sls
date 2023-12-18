{% set nfs_export_path = '/path/to/exported/dir' %}
{% set ip = '' %}

install_nfs_server:
  pkg.installed:
    - name: nfs-kernel-server

configure_nfs_exports:
  file.append:
    - name: /etc/exports
    - text: "{{ nfs_export_path }} {{ ip }}(rw,sync,no_subtree_check,no_root_squash)"

run_exportfs:
  cmd.run:
    - name: sudo exportfs -a

restart_nfs:
  service.running:
    - name: nfs-kernel-server
    - enable: True
