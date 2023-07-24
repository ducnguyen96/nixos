{ pkgs, lib, config, ... }: {
  home = {
    activation = {
      awesome = ''
        CONFIG="$HOME/.config/sway"

        if [ ! -d "$CONFIG" ]; then
          ${pkgs.git}/bin/git clone https://github.com/ducnguyen96/sway $CONFIG
        fi
      '';
    };
  };
}
