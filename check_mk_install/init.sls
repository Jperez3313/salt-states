download_checkmk:
  cmd.run:
    - name: wget -O /tmp/checkmk.deb https://download.checkmk.com/checkmk/2.2.0p17/check-mk-cloud-2.2.0p17_0.jammy_amd64.deb
install_checkmk:
  cmd.run:
    - name: sudo apt install -y /tmp/checkmk.deb

   
