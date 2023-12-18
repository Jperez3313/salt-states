download_discord_deb:
  cmd.run:
    - name: wget -O /tmp/discord.deb "https://discord.com/api/download?platform=linux&format=deb"

install_gdebi:
  pkg.installed:
    - name: gdebi

install_discord:
  cmd.run:
    - name: cd /tmp && sudo gdebi -n discord*.deb
