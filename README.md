# Use

* `cd`
* `git clone https://github.com/sdt16/nixos-config.git`
* `sudo mv nixos-config /var/`
* `sudo chown $USER:users /var/nixos-config`
* `sudo cp /var/nixos-config/config_template.nix /etc/nixos/configuration.nix`
* `sudo chmod a+w /etc/nixos/configuration.nix`
* Edit the template as appropriate
* `sudo nixos-rebuild switch --upgrade`
* `systemctl --user enable auto-fix-vscode-server.service`
* `systemctl --user start auto-fix-vscode-server.service`
* `gh auth login`
