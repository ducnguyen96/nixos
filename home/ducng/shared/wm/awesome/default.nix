{ config, pkgs, ... }:

{
  home = {
    activation = {
      awesome = ''
        CONFIG="$HOME/.config/awesome"

        if [ ! -d "$CONFIG" ]; then
          git clone https://github.com/ducnguyen96/rice-manual $CONFIG
        fi
      '';
    }
  };
}