get_minecraft:
  cmd.run:
      - name: wget -O /tmp/Minecraft.deb https://launcher.mojang.com/download/Minecraft.deb

install_minecraft_packages:
  cmd.run:
    - name: dpkg -i /tmp/Minecraft.deb

install_minecraft:
  cmd.run:
    - name: sudo apt-get install -f


